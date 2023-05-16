import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'launch_patch.freezed.dart';
part 'launch_patch.g.dart';

@freezed
class LaunchPatch with _$LaunchPatch {
  @HiveType(typeId: 5, adapterName: 'LaunchPatchAdapter')
  const factory LaunchPatch({
    @HiveField(0) String? small,
    @HiveField(1) String? large,
  }) = _LaunchPatch;

  factory LaunchPatch.fromJson(Map<String, dynamic> json) =>
      _$LaunchPatchFromJson(json);
}
