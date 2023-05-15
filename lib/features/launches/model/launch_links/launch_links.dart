import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spacexplorer/features/launches/model/launch_patch/launch_patch.dart';

part 'launch_links.freezed.dart';
part 'launch_links.g.dart';

@freezed
class LaunchLinks with _$LaunchLinks {
  const factory LaunchLinks({
    LaunchPatch? patch,
    String? article,
    String? wikipedia,
    @JsonKey(name: 'youtube_id') String? youtubeId,
  }) = _LaunchLinks;

  factory LaunchLinks.fromJson(Map<String, dynamic> json) =>
      _$LaunchLinksFromJson(json);
}
