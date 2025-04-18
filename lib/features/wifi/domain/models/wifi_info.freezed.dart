// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wifi_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WifiInfo _$WifiInfoFromJson(Map<String, dynamic> json) {
  return _WifiInfo.fromJson(json);
}

/// @nodoc
mixin _$WifiInfo {
  String get ssid => throw _privateConstructorUsedError;
  String get bssid => throw _privateConstructorUsedError;
  int get signalStrength => throw _privateConstructorUsedError;
  int get frequency => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;

  /// Serializes this WifiInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WifiInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WifiInfoCopyWith<WifiInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WifiInfoCopyWith<$Res> {
  factory $WifiInfoCopyWith(WifiInfo value, $Res Function(WifiInfo) then) =
      _$WifiInfoCopyWithImpl<$Res, WifiInfo>;
  @useResult
  $Res call(
      {String ssid,
      String bssid,
      int signalStrength,
      int frequency,
      bool isConnected});
}

/// @nodoc
class _$WifiInfoCopyWithImpl<$Res, $Val extends WifiInfo>
    implements $WifiInfoCopyWith<$Res> {
  _$WifiInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WifiInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssid = null,
    Object? bssid = null,
    Object? signalStrength = null,
    Object? frequency = null,
    Object? isConnected = null,
  }) {
    return _then(_value.copyWith(
      ssid: null == ssid
          ? _value.ssid
          : ssid // ignore: cast_nullable_to_non_nullable
              as String,
      bssid: null == bssid
          ? _value.bssid
          : bssid // ignore: cast_nullable_to_non_nullable
              as String,
      signalStrength: null == signalStrength
          ? _value.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WifiInfoImplCopyWith<$Res>
    implements $WifiInfoCopyWith<$Res> {
  factory _$$WifiInfoImplCopyWith(
          _$WifiInfoImpl value, $Res Function(_$WifiInfoImpl) then) =
      __$$WifiInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String ssid,
      String bssid,
      int signalStrength,
      int frequency,
      bool isConnected});
}

/// @nodoc
class __$$WifiInfoImplCopyWithImpl<$Res>
    extends _$WifiInfoCopyWithImpl<$Res, _$WifiInfoImpl>
    implements _$$WifiInfoImplCopyWith<$Res> {
  __$$WifiInfoImplCopyWithImpl(
      _$WifiInfoImpl _value, $Res Function(_$WifiInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WifiInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssid = null,
    Object? bssid = null,
    Object? signalStrength = null,
    Object? frequency = null,
    Object? isConnected = null,
  }) {
    return _then(_$WifiInfoImpl(
      ssid: null == ssid
          ? _value.ssid
          : ssid // ignore: cast_nullable_to_non_nullable
              as String,
      bssid: null == bssid
          ? _value.bssid
          : bssid // ignore: cast_nullable_to_non_nullable
              as String,
      signalStrength: null == signalStrength
          ? _value.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WifiInfoImpl implements _WifiInfo {
  const _$WifiInfoImpl(
      {required this.ssid,
      required this.bssid,
      required this.signalStrength,
      required this.frequency,
      required this.isConnected});

  factory _$WifiInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WifiInfoImplFromJson(json);

  @override
  final String ssid;
  @override
  final String bssid;
  @override
  final int signalStrength;
  @override
  final int frequency;
  @override
  final bool isConnected;

  @override
  String toString() {
    return 'WifiInfo(ssid: $ssid, bssid: $bssid, signalStrength: $signalStrength, frequency: $frequency, isConnected: $isConnected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WifiInfoImpl &&
            (identical(other.ssid, ssid) || other.ssid == ssid) &&
            (identical(other.bssid, bssid) || other.bssid == bssid) &&
            (identical(other.signalStrength, signalStrength) ||
                other.signalStrength == signalStrength) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, ssid, bssid, signalStrength, frequency, isConnected);

  /// Create a copy of WifiInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WifiInfoImplCopyWith<_$WifiInfoImpl> get copyWith =>
      __$$WifiInfoImplCopyWithImpl<_$WifiInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WifiInfoImplToJson(
      this,
    );
  }
}

abstract class _WifiInfo implements WifiInfo {
  const factory _WifiInfo(
      {required final String ssid,
      required final String bssid,
      required final int signalStrength,
      required final int frequency,
      required final bool isConnected}) = _$WifiInfoImpl;

  factory _WifiInfo.fromJson(Map<String, dynamic> json) =
      _$WifiInfoImpl.fromJson;

  @override
  String get ssid;
  @override
  String get bssid;
  @override
  int get signalStrength;
  @override
  int get frequency;
  @override
  bool get isConnected;

  /// Create a copy of WifiInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WifiInfoImplCopyWith<_$WifiInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
