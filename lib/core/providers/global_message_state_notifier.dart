import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/core/enums/global_message_category.dart';
import 'package:spacexplorer/core/enums/global_message_type.dart';
import 'package:spacexplorer/core/model/global_message_state/global_message_state.dart';

final globalMessageStateNotifierProvider = StateNotifierProvider.autoDispose<
    GlobalMessageStateNotifier, GlobalMessageState?>(
  (ref) => GlobalMessageStateNotifier(),
);

class GlobalMessageStateNotifier extends StateNotifier<GlobalMessageState?> {
  GlobalMessageStateNotifier() : super(null);

  void showGlobalMessage({
    required String message,
    required GlobalMessageCategory category,
    required GlobalMessageType type,
    bool showCloseButton = false,
  }) {
    state = GlobalMessageState(
      message: message,
      category: category,
      displayType: type,
      showCloseButton: showCloseButton,
    );
  }

  void showSnackBar({
    required String message,
    required GlobalMessageCategory category,
    bool showCloseButton = false,
  }) {
    showGlobalMessage(
      message: message,
      category: category,
      type: GlobalMessageType.snackBar,
      showCloseButton: showCloseButton,
    );
  }
}
