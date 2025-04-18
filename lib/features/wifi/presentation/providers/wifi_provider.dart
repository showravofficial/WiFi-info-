import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repositories/wifi_repository_impl.dart';
import '../../domain/models/wifi_info.dart';
import '../../domain/repositories/wifi_repository.dart';

part 'wifi_provider.g.dart';

@riverpod
WifiRepository wifiRepository(WifiRepositoryRef ref) {
  return WifiRepositoryImpl();
}

@riverpod
class WifiState extends _$WifiState {
  @override
  FutureOr<List<WifiInfo>> build() async {
    final repository = ref.watch(wifiRepositoryProvider);
    final hasPermission = await repository.requestPermissions();
    if (!hasPermission) {
      return [];
    }
    return repository.getAvailableNetworks();
  }

  Future<void> refreshNetworks() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => ref.read(wifiRepositoryProvider).getAvailableNetworks());
  }

  Future<WifiInfo?> getConnectedNetwork() async {
    return ref.read(wifiRepositoryProvider).getConnectedNetwork();
  }
} 