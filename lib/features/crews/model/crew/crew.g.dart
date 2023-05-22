// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crew.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CrewAdapter extends TypeAdapter<_$_Crew> {
  @override
  final int typeId = 7;

  @override
  _$_Crew read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Crew(
      id: fields[0] as String,
      name: fields[1] as String,
      agency: fields[2] as String,
      image: fields[3] as String,
      wikipedia: fields[4] as String,
      launches: (fields[5] as List).cast<String>(),
      status: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Crew obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.agency)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.wikipedia)
      ..writeByte(6)
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.launches);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CrewAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Crew _$$_CrewFromJson(Map<String, dynamic> json) => _$_Crew(
      id: json['id'] as String,
      name: json['name'] as String,
      agency: json['agency'] as String,
      image: json['image'] as String,
      wikipedia: json['wikipedia'] as String,
      launches:
          (json['launches'] as List<dynamic>).map((e) => e as String).toList(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_CrewToJson(_$_Crew instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'agency': instance.agency,
      'image': instance.image,
      'wikipedia': instance.wikipedia,
      'launches': instance.launches,
      'status': instance.status,
    };
