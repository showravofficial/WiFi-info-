// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wifi_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wifiRepositoryHash() => r'eb962a2a99465d99d29bac9d2f794048fb194df5';

/// See also [wifiRepository].
@ProviderFor(wifiRepository)
final wifiRepositoryProvider = AutoDisposeProvider<WifiRepository>.internal(
  wifiRepository,
  name: r'wifiRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$wifiRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WifiRepositoryRef = AutoDisposeProviderRef<WifiRepository>;
String _$wifiStateHash() => r'52dddcb4a0bc778118c6c586baa26d64ac89742e';

/// See also [WifiState].
@ProviderFor(WifiState)
final wifiStateProvider =
    AutoDisposeAsyncNotifierProvider<WifiState, List<WifiInfo>>.internal(
  WifiState.new,
  name: r'wifiStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$wifiStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WifiState = AutoDisposeAsyncNotifier<List<WifiInfo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
