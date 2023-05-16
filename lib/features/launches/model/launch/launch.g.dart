// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch.dart';

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
