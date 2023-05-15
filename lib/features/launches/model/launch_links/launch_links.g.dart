// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LaunchLinks _$$_LaunchLinksFromJson(Map<String, dynamic> json) =>
    _$_LaunchLinks(
      patch: json['patch'] == null
          ? null
          : LaunchPatch.fromJson(json['patch'] as Map<String, dynamic>),
      article: json['article'] as String?,
      wikipedia: json['wikipedia'] as String?,
      youtubeId: json['youtube_id'] as String?,
    );

Map<String, dynamic> _$$_LaunchLinksToJson(_$_LaunchLinks instance) =>
    <String, dynamic>{
      'patch': instance.patch,
      'article': instance.article,
      'wikipedia': instance.wikipedia,
      'youtube_id': instance.youtubeId,
    };
