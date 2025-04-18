import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../providers/wifi_provider.dart';
import '../widgets/wifi_network_card.dart';

class WifiScreen extends ConsumerWidget {
  const WifiScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wifiState = ref.watch(wifiStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('WiFi Networks'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.read(wifiStateProvider.notifier).refreshNetworks(),
          ),
        ],
      ),
      body: wifiState.when(
        data: (networks) => networks.isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.wifi_off,
                      size: 64.sp,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'No WiFi networks found',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Please check the following:',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(height: 8.h),
                    _buildBulletPoint(context, 'WiFi is enabled on your device'),
                    _buildBulletPoint(context, 'Location permissions are granted'),
                    _buildBulletPoint(context, 'You are connected to a WiFi network'),
                    SizedBox(height: 16.h),
                    ElevatedButton(
                      onPressed: () => ref.read(wifiStateProvider.notifier).refreshNetworks(),
                      child: const Text('Refresh'),
                    ),
                  ],
                ),
              )
            : RefreshIndicator(
                onRefresh: () => ref.read(wifiStateProvider.notifier).refreshNetworks(),
                child: ListView.builder(
                  padding: EdgeInsets.all(16.r),
                  itemCount: networks.length,
                  itemBuilder: (context, index) {
                    final network = networks[index];
                    return Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: WifiNetworkCard(network: network),
                    );
                  },
                ),
              ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: 64.sp,
                color: Theme.of(context).colorScheme.error,
              ),
              SizedBox(height: 16.h),
              Text(
                'Error loading WiFi networks',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 8.h),
              Text(
                error.toString(),
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h),
              ElevatedButton(
                onPressed: () => ref.read(wifiStateProvider.notifier).refreshNetworks(),
                child: const Text('Try Again'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(BuildContext context, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_right,
            size: 16.sp,
            color: Theme.of(context).colorScheme.secondary,
          ),
          SizedBox(width: 8.w),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
} 