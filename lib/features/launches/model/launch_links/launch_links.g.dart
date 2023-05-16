// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_links.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LaunchLinksAdapter extends TypeAdapter<_$_LaunchLinks> {
  @override
  final int typeId = 4;

  @override
  _$_LaunchLinks read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_LaunchLinks(
      patch: fields[0] as LaunchPatch?,
      article: fields[1] as String?,
      wikipedia: fields[2] as String?,
      youtubeId: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_LaunchLinks obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.patch)
      ..writeByte(1)
      ..write(obj.article)
      ..writeByte(2)
      ..write(obj.wikipedia)
      ..writeByte(3)
      ..write(obj.youtubeId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LaunchLinksAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
