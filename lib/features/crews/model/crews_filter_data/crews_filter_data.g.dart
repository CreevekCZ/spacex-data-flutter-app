// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crews_filter_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CrewsFilterDataAdapter extends TypeAdapter<_$_CrewsFilterData> {
  @override
  final int typeId = 8;

  @override
  _$_CrewsFilterData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_CrewsFilterData(
      searchTerm: fields[0] as String?,
      agency: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_CrewsFilterData obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.searchTerm)
      ..writeByte(1)
      ..write(obj.agency);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CrewsFilterDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CrewsFilterData _$$_CrewsFilterDataFromJson(Map<String, dynamic> json) =>
    _$_CrewsFilterData(
      searchTerm: json['searchTerm'] as String?,
      agency: json['agency'] as String?,
    );

Map<String, dynamic> _$$_CrewsFilterDataToJson(_$_CrewsFilterData instance) =>
    <String, dynamic>{
      'searchTerm': instance.searchTerm,
      'agency': instance.agency,
    };
