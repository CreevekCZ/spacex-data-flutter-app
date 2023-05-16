// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_failure.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LaunchFailureAdapter extends TypeAdapter<_$_LaunchFailure> {
  @override
  final int typeId = 3;

  @override
  _$_LaunchFailure read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_LaunchFailure(
      time: fields[0] as int,
      altitude: fields[1] as int?,
      reason: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_LaunchFailure obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.time)
      ..writeByte(1)
      ..write(obj.altitude)
      ..writeByte(2)
      ..write(obj.reason);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LaunchFailureAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LaunchFailure _$$_LaunchFailureFromJson(Map<String, dynamic> json) =>
    _$_LaunchFailure(
      time: json['time'] as int,
      altitude: json['altitude'] as int?,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$$_LaunchFailureToJson(_$_LaunchFailure instance) =>
    <String, dynamic>{
      'time': instance.time,
      'altitude': instance.altitude,
      'reason': instance.reason,
    };
