// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wifi_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WifiInfoImpl _$$WifiInfoImplFromJson(Map<String, dynamic> json) =>
    _$WifiInfoImpl(
      ssid: json['ssid'] as String,
      bssid: json['bssid'] as String,
      signalStrength: (json['signalStrength'] as num).toInt(),
      frequency: (json['frequency'] as num).toInt(),
      isConnected: json['isConnected'] as bool,
    );

Map<String, dynamic> _$$WifiInfoImplToJson(_$WifiInfoImpl instance) =>
    <String, dynamic>{
      'ssid': instance.ssid,
      'bssid': instance.bssid,
      'signalStrength': instance.signalStrength,
      'frequency': instance.frequency,
      'isConnected': instance.isConnected,
    };
