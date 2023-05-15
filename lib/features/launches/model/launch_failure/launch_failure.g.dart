// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_failure.dart';

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
