import 'package:freezed_annotation/freezed_annotation.dart';

part 'wifi_info.freezed.dart';
part 'wifi_info.g.dart';

@freezed
class WifiInfo with _$WifiInfo {
  const factory WifiInfo({
    required String ssid,
    required String bssid,
    required int signalStrength,
    required int frequency,
    required bool isConnected,
  }) = _WifiInfo;

  factory WifiInfo.fromJson(Map<String, dynamic> json) => _$WifiInfoFromJson(json);
} 