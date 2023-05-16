// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_patch.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LaunchPatchAdapter extends TypeAdapter<_$_LaunchPatch> {
  @override
  final int typeId = 5;

  @override
  _$_LaunchPatch read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_LaunchPatch(
      small: fields[0] as String?,
      large: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_LaunchPatch obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.small)
      ..writeByte(1)
      ..write(obj.large);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LaunchPatchAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LaunchPatch _$$_LaunchPatchFromJson(Map<String, dynamic> json) =>
    _$_LaunchPatch(
      small: json['small'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$$_LaunchPatchToJson(_$_LaunchPatch instance) =>
    <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };
