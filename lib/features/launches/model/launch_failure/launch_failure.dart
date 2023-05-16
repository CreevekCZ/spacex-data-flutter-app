import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'launch_failure.freezed.dart';
part 'launch_failure.g.dart';

@freezed
class LaunchFailure with _$LaunchFailure {
  @HiveType(typeId: 3, adapterName: 'LaunchFailureAdapter')
  const factory LaunchFailure({
    @HiveField(0) required int time,
    @HiveField(1) int? altitude,
    @HiveField(2) required String reason,
  }) = _LaunchFailure;

  factory LaunchFailure.fromJson(Map<String, dynamic> json) =>
      _$LaunchFailureFromJson(json);
}
