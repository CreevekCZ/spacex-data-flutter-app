// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LaunchAdapter extends TypeAdapter<_$_Launch> {
  @override
  final int typeId = 2;

  @override
  _$_Launch read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Launch(
      id: fields[0] as String,
      name: fields[1] as String,
      upcoming: fields[2] as bool,
      rocket: fields[3] as String,
      failures: (fields[4] as List).cast<LaunchFailure>(),
      links: fields[5] as LaunchLinks,
      crew: (fields[6] as List).cast<String>(),
      details: fields[7] as String?,
      success: fields[8] as bool?,
      dateLocal: fields[9] as DateTime,
      flightNumber: fields[10] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Launch obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.upcoming)
      ..writeByte(3)
      ..write(obj.rocket)
      ..writeByte(5)
      ..write(obj.links)
      ..writeByte(7)
      ..write(obj.details)
      ..writeByte(8)
      ..write(obj.success)
      ..writeByte(9)
      ..write(obj.dateLocal)
      ..writeByte(10)
      ..write(obj.flightNumber)
      ..writeByte(4)
      ..write(obj.failures)
      ..writeByte(6)
      ..write(obj.crew);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LaunchAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Launch _$$_LaunchFromJson(Map<String, dynamic> json) => _$_Launch(
      id: json['id'] as String,
      name: json['name'] as String,
      upcoming: json['upcoming'] as bool,
      rocket: json['rocket'] as String,
      failures: (json['failures'] as List<dynamic>)
          .map((e) => LaunchFailure.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: LaunchLinks.fromJson(json['links'] as Map<String, dynamic>),
      crew: (json['crew'] as List<dynamic>).map((e) => e as String).toList(),
      details: json['details'] as String?,
      success: json['success'] as bool?,
      dateLocal: DateTime.parse(json['date_local'] as String),
      flightNumber: json['flight_number'] as int,
    );

Map<String, dynamic> _$$_LaunchToJson(_$_Launch instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'upcoming': instance.upcoming,
      'rocket': instance.rocket,
      'failures': instance.failures,
      'links': instance.links,
      'crew': instance.crew,
      'details': instance.details,
      'success': instance.success,
      'date_local': instance.dateLocal.toIso8601String(),
      'flight_number': instance.flightNumber,
    };
