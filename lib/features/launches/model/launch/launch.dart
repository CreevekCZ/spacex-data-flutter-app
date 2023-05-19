import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:spacexplorer/core/helpers/interfaces/identifiable.dart';
import 'package:spacexplorer/features/launches/model/launch_failure/launch_failure.dart';
import 'package:spacexplorer/features/launches/model/launch_links/launch_links.dart';

part 'launch.freezed.dart';
part 'launch.g.dart';

@freezed
class Launch with _$Launch implements Identifiable {
  @HiveType(typeId: 2, adapterName: 'LaunchAdapter')
  const factory Launch({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required bool upcoming,
    @HiveField(3) required String rocket,
    @HiveField(4) required List<LaunchFailure> failures,
    @HiveField(5) required LaunchLinks links,
    @HiveField(6) required List<String> crew,
    @HiveField(7) String? details,
    @HiveField(8) bool? success,
    @HiveField(9) @JsonKey(name: 'date_local') required DateTime dateLocal,
    @HiveField(10) @JsonKey(name: 'flight_number') required int flightNumber,
  }) = _Launch;

  const Launch._();

  factory Launch.fromJson(Map<String, dynamic> json) => _$LaunchFromJson(json);

  @override
  String get identifier => id;

  int get year => dateLocal.year;

  String? get smallPatchUrl => links.patch?.small;

  String? get largePatchUrl => links.patch?.large;

  String get formatedDate =>
      '${dateLocal.day}.${dateLocal.month}.${dateLocal.year}';

  String get sucessLabel {
    switch (success) {
      case true:
        return 'Success';
      case false:
        return 'Failure';
      default:
        return '–';
    }
  }

  Color get sucessColor {
    switch (success) {
      case true:
        return Colors.green;
      case false:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
