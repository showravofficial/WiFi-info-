import '../models/wifi_info.dart';

abstract class WifiRepository {
  Future<List<WifiInfo>> getAvailableNetworks();
  Future<WifiInfo?> getConnectedNetwork();
  Future<bool> requestPermissions();
} 