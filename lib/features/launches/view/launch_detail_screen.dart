import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/features/launches/model/launch/launch.dart';
import 'package:spacexplorer/features/launches/provider/launches_state_notifier_provider.dart';
import 'package:spacexplorer/features/launches/widgets/launch_detail.dart';

class LaunchDetailScreen extends StatefulHookConsumerWidget {
  const LaunchDetailScreen({
    required this.launchId,
    super.key,
  });

  final String? launchId;

  @override
  ConsumerState<LaunchDetailScreen> createState() => _LaunchDetailScreenState();
}

class _LaunchDetailScreenState extends ConsumerState<LaunchDetailScreen> {
  late final LaunchesStateNotifier launchesNotifier;
  Launch? launch;

  @override
  void initState() {
    super.initState();

    if (widget.launchId == null) {
      context.pop();
      return;
    }

    launchesNotifier = ref.read(launchesStateNotifierProvider.notifier);

    launch =
        ref.read(launchesStateNotifierProvider).getLaunchById(widget.launchId!);

    if (launch == null) {
      launchesNotifier.getById(widget.launchId!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Launch detail'),
      ),
      body: buildContent(),
    );
  }

  Widget buildContent() {
    if (launch == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return LaunchDetail(launch: launch!);
  }
}
