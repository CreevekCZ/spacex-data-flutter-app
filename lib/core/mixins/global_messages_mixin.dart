import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/core/enums/global_message_type.dart';
import 'package:spacexplorer/core/model/global_message_state/global_message_state.dart';
import 'package:spacexplorer/core/providers/global_message_state_notifier.dart';

mixin GlobalMessagesMixin on ConsumerWidget {
  void initializeGlobalMessenger(BuildContext context, WidgetRef ref) {
    ref.listen<GlobalMessageState?>(
      globalMessageStateNotifierProvider,
      (previous, next) {
        if (next != null) {
          switch (next.displayType) {
            case GlobalMessageType.snackBar:
              _showSnackBar(next, context);
              break;
            case GlobalMessageType.dialog:
              _showDialog(next, context);
              break;
          }
        }
      },
    );
  }

  void _showDialog(GlobalMessageState state, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(state.title ?? ''),
        content: Text(state.message),
        actions: [
          if (state.showCloseButton)
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
        ],
      ),
    );
  }

  void _showSnackBar(GlobalMessageState state, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 5,
        behavior: SnackBarBehavior.floating,
        content: Text(
          state.message,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        backgroundColor: state.category.color,
        action: state.showCloseButton
            ? SnackBarAction(
                label: 'Close',
                textColor: Colors.white,
                onPressed: () => ScaffoldMessenger.of(context).clearSnackBars(),
              )
            : null,
      ),
    );
  }
}
