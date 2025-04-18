import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wifi_scan/wifi_scan.dart';
import '../../domain/models/wifi_info.dart';
import '../../domain/repositories/wifi_repository.dart';

class WifiRepositoryImpl implements WifiRepository {
  final NetworkInfo _networkInfo;

  WifiRepositoryImpl({NetworkInfo? networkInfo})
      : _networkInfo = networkInfo ?? NetworkInfo();

  @override
  Future<List<WifiInfo>> getAvailableNetworks() async {
    try {
      // Check permissions
      if (!await Permission.location.isGranted) {
        throw Exception('Location permission is required to access WiFi information');
      }

      // Check if can scan
      final canScan = await WiFiScan.instance.canStartScan();
      if (canScan != CanStartScan.yes) {
        throw Exception('Cannot scan for WiFi networks. Please check your settings.');
      }

      // Start scan
      final isScanning = await WiFiScan.instance.startScan();
      if (!isScanning) {
        throw Exception('Failed to start WiFi scan');
      }

      // Get scan results
      final results = await WiFiScan.instance.getScannedResults();
      
      // Get current connected network info
      final connectedWifiName = await _networkInfo.getWifiName();
      final connectedWifiBSSID = await _networkInfo.getWifiBSSID();

      // Convert results to our model
      return results.map((result) {
        final isConnected = result.bssid == connectedWifiBSSID;
        return WifiInfo(
          ssid: result.ssid,
          bssid: result.bssid,
          signalStrength: result.level,
          frequency: result.frequency,
          isConnected: isConnected,
        );
      }).toList()
        ..sort((a, b) => b.signalStrength.compareTo(a.signalStrength)); // Sort by signal strength
    } catch (e) {
      if (e is Exception) {
        rethrow;
      }
      throw Exception('Failed to get WiFi information: $e');
    }
  }

  @override
  Future<WifiInfo?> getConnectedNetwork() async {
    try {
      if (!await Permission.location.isGranted) {
        throw Exception('Location permission is required to access WiFi information');
      }

      final wifiName = await _networkInfo.getWifiName();
      final wifiBSSID = await _networkInfo.getWifiBSSID();
      
      if (wifiName == null || wifiBSSID == null) {
        return null;
      }

      // Get scan results to get more accurate signal strength and frequency
      final results = await WiFiScan.instance.getScannedResults();
      final connectedNetwork = results.cast<WiFiAccessPoint?>().firstWhere(
        (result) => result?.bssid == wifiBSSID,
        orElse: () => null,
      );

      return WifiInfo(
        ssid: wifiName.replaceAll('"', ''),
        bssid: wifiBSSID,
        signalStrength: connectedNetwork?.level ?? -50,
        frequency: connectedNetwork?.frequency ?? 2412,
        isConnected: true,
      );
    } catch (e) {
      throw Exception('Failed to get connected network information: $e');
    }
  }

  @override
  Future<bool> requestPermissions() async {
    try {
      // Request location permission
      final locationStatus = await Permission.location.request();
      
      if (locationStatus.isPermanentlyDenied) {
        throw Exception('Please enable location permission in app settings to access WiFi information');
      }

      // Request nearby WiFi devices permission for Android 13+
      if (await Permission.nearbyWifiDevices.isRestricted) {
        final wifiStatus = await Permission.nearbyWifiDevices.request();
        if (!wifiStatus.isGranted) {
          throw Exception('Nearby WiFi devices permission is required for scanning');
        }
      }

      return locationStatus.isGranted;
    } catch (e) {
      throw Exception('Failed to request permissions: $e');
    }
  }
} 