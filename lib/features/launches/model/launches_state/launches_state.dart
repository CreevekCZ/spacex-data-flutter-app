import 'package:collection/collection.dart';
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

  LaunchesState copyWithAddOrUpdatedLaunch(Launch launch) {
    bool isNew = false;

    final updatedLaunches = launches.map((item) {
      if (item.id == launch.id) {
        isNew = true;
        return launch;
      }

      return item;
    }).toList();

    if (!isNew) {
      updatedLaunches
        ..add(launch)
        ..sort((a, b) => b.dateLocal.compareTo(a.dateLocal));
    }

    return copyWith(
      launches: updatedLaunches,
      updatedAt: DateTime.now(),
    );
  }

  Launch? getLaunchById(String id) {
    return launches.firstWhereOrNull(
      (launch) => launch.id == id,
    );
  }

  List<String> get allYears {
    final result = <String>[];

    for (final launch in launches) {
      final year = launch.year.toString();
      if (!result.contains(year)) {
        result.add(year);
      }
    }

    return result;
  }

  List<Launch> get filteredLaunches {
    List<Launch> result = launches;

    result = _filterByYear(result);
    result = _filterBySuccess(result);
    result = _filterBySearchTerm(result);
    result = _filterByOnlyImages(result);
    result = _filterByHasCrew(result);

    return result;
  }

  List<Launch> _filterByYear(List<Launch> launches) {
    final filterYear = filterData.year;

    if (filterYear != null) {
      return launches
          .where(
            (launch) => launch.year.toString() == filterYear,
          )
          .toList();
    }

    return launches;
  }

  List<Launch> _filterBySuccess(List<Launch> launches) {
    final filterSuccess = filterData.success;

    if (filterSuccess == true) {
      return launches
          .where(
            (launch) => launch.success == filterSuccess,
          )
          .toList();
    }

    return launches;
  }

  List<Launch> _filterBySearchTerm(List<Launch> launches) {
    final filterSearchTerm = filterData.searchTerm?.toLowerCase();

    if (filterSearchTerm != null) {
      return launches
          .where(
            (launch) =>
                launch.name.toLowerCase().contains(filterSearchTerm) ||
                launch.identifier.toLowerCase().contains(filterSearchTerm) ||
                (launch.details ?? '').toLowerCase().contains(filterSearchTerm),
          )
          .toList();
    }

    return launches;
  }

  List<Launch> _filterByOnlyImages(List<Launch> launches) {
    final onlyImages = filterData.onlyWithImages;

    if (onlyImages == true) {
      return launches.where((launch) => launch.smallPatchUrl != null).toList();
    }

    return launches;
  }

  List<Launch> _filterByHasCrew(List<Launch> launches) {
    final hasCrew = filterData.hasCrew;

    if (hasCrew == true) {
      return launches.where((launch) => launch.crew.isNotEmpty).toList();
    }

    return launches;
  }
}
