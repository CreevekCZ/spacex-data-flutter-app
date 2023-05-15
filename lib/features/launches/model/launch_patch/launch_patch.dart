import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch_patch.freezed.dart';
part 'launch_patch.g.dart';

@freezed
class LaunchPatch with _$LaunchPatch {
  const factory LaunchPatch({
    String? small,
    String? large,
  }) = _LaunchPatch;

  factory LaunchPatch.fromJson(Map<String, dynamic> json) =>
      _$LaunchPatchFromJson(json);
}
