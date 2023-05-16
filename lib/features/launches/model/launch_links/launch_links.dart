import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:spacexplorer/features/launches/model/launch_patch/launch_patch.dart';

part 'launch_links.freezed.dart';
part 'launch_links.g.dart';

@freezed
class LaunchLinks with _$LaunchLinks {
  @HiveType(typeId: 4, adapterName: 'LaunchLinksAdapter')
  const factory LaunchLinks({
    @HiveField(0) LaunchPatch? patch,
    @HiveField(1) String? article,
    @HiveField(2) String? wikipedia,
    @JsonKey(name: 'youtube_id') @HiveField(3) String? youtubeId,
  }) = _LaunchLinks;

  factory LaunchLinks.fromJson(Map<String, dynamic> json) =>
      _$LaunchLinksFromJson(json);
}
