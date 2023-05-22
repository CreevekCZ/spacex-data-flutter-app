// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crews_state.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CrewsStateAdapter extends TypeAdapter<_$_CrewsState> {
  @override
  final int typeId = 9;

  @override
  _$_CrewsState read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_CrewsState(
      crews: (fields[0] as List).cast<Crew>(),
      filterData: fields[1] as CrewsFilterData,
    );
  }

  @override
  void write(BinaryWriter writer, _$_CrewsState obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.filterData)
      ..writeByte(0)
      ..write(obj.crews);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CrewsStateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CrewsState _$$_CrewsStateFromJson(Map<String, dynamic> json) =>
    _$_CrewsState(
      crews: (json['crews'] as List<dynamic>?)
              ?.map((e) => Crew.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      filterData: json['filterData'] == null
          ? const CrewsFilterData()
          : CrewsFilterData.fromJson(
              json['filterData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CrewsStateToJson(_$_CrewsState instance) =>
    <String, dynamic>{
      'crews': instance.crews,
      'filterData': instance.filterData,
    };
