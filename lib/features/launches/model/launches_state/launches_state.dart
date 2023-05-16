import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:spacexplorer/features/launches/model/launch/launch.dart';
import 'package:spacexplorer/features/launches/model/launches_filter_data/launches_filter_data.dart';

part 'launches_state.freezed.dart';
part 'launches_state.g.dart';

@freezed
class LaunchesState with _$LaunchesState {
  @HiveType(typeId: 6, adapterName: 'LaunchesStateAdapter')
  const factory LaunchesState({
    @HiveField(0) @Default([]) List<Launch> launches,
    @HiveField(1) @Default(LaunchesFilterData()) LaunchesFilterData filterData,
    @HiveField(2) DateTime? updatedAt,
  }) = _LaunchesState;

  const LaunchesState._();
}
