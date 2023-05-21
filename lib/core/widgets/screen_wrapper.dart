import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/core/mixins/global_messages_mixin.dart';

class ScreenWrapper extends HookConsumerWidget with GlobalMessagesMixin {
  const ScreenWrapper({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useMemoized(() {
      initializeGlobalMessenger(context, ref);
    }, []);

    return child;
  }
}
