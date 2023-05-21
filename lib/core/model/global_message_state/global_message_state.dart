import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spacexplorer/core/enums/global_message_category.dart';
import 'package:spacexplorer/core/enums/global_message_type.dart';

part 'global_message_state.freezed.dart';

@freezed
class GlobalMessageState with _$GlobalMessageState {
  const factory GlobalMessageState({
    String? title,
    required String message,
    required GlobalMessageCategory category,
    required GlobalMessageType displayType,
    @Default(true) bool showCloseButton,
  }) = _GlobalMessageState;

  const GlobalMessageState._();
}
