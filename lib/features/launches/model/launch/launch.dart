import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spacexplorer/core/helpers/interfaces/identifiable.dart';
import 'package:spacexplorer/features/launches/model/launch_failure/launch_failure.dart';
import 'package:spacexplorer/features/launches/model/launch_links/launch_links.dart';

part 'launch.freezed.dart';
part 'launch.g.dart';

@freezed
class Launch with _$Launch implements Identifiable {
  const factory Launch({
    required String id,
    required String name,
    required bool upcoming,
    required String rocket,
    required List<LaunchFailure> failures,
    required LaunchLinks links,
    String? details,
    bool? success,
    @JsonKey(name: 'date_local') required DateTime dateLocal,
    @JsonKey(name: 'flight_number') required int flightNumber,
  }) = _Launch;

  const Launch._();

  factory Launch.fromJson(Map<String, dynamic> json) => _$LaunchFromJson(json);

  int get year => dateLocal.year;

  @override
  String get identifier => id;
}
