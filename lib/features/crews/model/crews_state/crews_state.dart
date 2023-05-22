import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:spacexplorer/features/crews/model/crew/crew.dart';
import 'package:spacexplorer/features/crews/model/crews_filter_data/crews_filter_data.dart';

part 'crews_state.freezed.dart';
part 'crews_state.g.dart';

@freezed
class CrewsState with _$CrewsState {
  @HiveType(typeId: 9, adapterName: 'CrewsStateAdapter')
  const factory CrewsState({
    @HiveField(0) @Default([]) List<Crew> crews,
    @HiveField(1) @Default(CrewsFilterData()) CrewsFilterData filterData,
  }) = _CrewsState;

  factory CrewsState.fromJson(Map<String, dynamic> json) =>
      _$CrewsStateFromJson(json);

  const CrewsState._();

  CrewsState copyWithAddOrUpdatedCrew(Crew crew) {
    bool isNew = false;

    final updatedCrews = crews.map((item) {
      if (item.id == crew.id) {
        isNew = true;
        return crew;
      }

      return item;
    }).toList();

    if (!isNew) {
      updatedCrews
        ..add(crew)
        ..sort((a, b) => b.name.compareTo(a.name));
    }

    return copyWith(
      crews: updatedCrews,
    );
  }

  Crew? getCrewById(String id) {
    return crews.firstWhereOrNull(
      (crew) => crew.id == id,
    );
  }

  List<String> get allAgencies {
    final result = <String>[];

    for (final crew in crews) {
      final agency = crew.agency;
      if (!result.contains(agency)) {
        result.add(agency);
      }
    }

    return result;
  }

  List<Crew> get filteredCrews {
    List<Crew> result = crews;

    result = _filterBySearchTerm(result);
    result = _filterByAgency(result);

    return result;
  }

  List<Crew> _filterBySearchTerm(List<Crew> crews) {
    final searchTerm = filterData.searchTerm?.toLowerCase();

    if (searchTerm != null) {
      return crews
          .where(
            (crew) =>
                crew.agency.toLowerCase().contains(searchTerm) ||
                crew.name.toLowerCase().contains(searchTerm) ||
                crew.status.toLowerCase().contains(searchTerm) ||
                crew.id.toLowerCase().contains(searchTerm),
          )
          .toList();
    }

    return crews;
  }

  List<Crew> _filterByAgency(List<Crew> crews) {
    final filterAgency = filterData.agency;

    if (filterAgency != null) {
      return crews.where((crew) => crew.agency == filterAgency).toList();
    }

    return crews;
  }
}
