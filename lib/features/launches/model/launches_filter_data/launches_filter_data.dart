import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'launches_filter_data.freezed.dart';
part 'launches_filter_data.g.dart';

@freezed
class LaunchesFilterData with _$LaunchesFilterData {
  @HiveType(typeId: 1, adapterName: 'LaunchesFilterDataAdapter')
  const factory LaunchesFilterData({
    @HiveField(1) String? searchTerm,
    @HiveField(2) String? year,
    @HiveField(3) bool? success,
    @HiveField(4) bool? onlyWithImages,
    @HiveField(5) bool? hasCrew,
  }) = _LaunchesFilterData;

  const LaunchesFilterData._();

  bool get isFilterActive =>
      searchTerm != null ||
      year != null ||
      success != null ||
      onlyWithImages != null ||
      hasCrew != null;
}
