import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/core/enums/global_message_category.dart';
import 'package:spacexplorer/core/model/exceptions/api_exception.dart';
import 'package:spacexplorer/core/providers/global_message_state_notifier.dart';
import 'package:spacexplorer/features/crews/model/crew/crew.dart';
import 'package:spacexplorer/features/crews/model/crews_filter_data/crews_filter_data.dart';
import 'package:spacexplorer/features/crews/model/crews_state/crews_state.dart';
import 'package:spacexplorer/features/crews/provider/crews_repository_provider.dart';
import 'package:spacexplorer/features/crews/repository/crews_repository/crews_repository.dart';

final crewsStateNotifierProvider =
    StateNotifierProvider<CrewsStateNotifier, CrewsState>((ref) {
  final crewsRepository = ref.read(crewsRepositoryProvider);
  final crewsStateBox = Hive.box<CrewsState>('crewsState');
  final globalMessageStateNotifier =
      ref.read(globalMessageStateNotifierProvider.notifier);

  return CrewsStateNotifier(
    crewsRepository: crewsRepository,
    crewsStateBox: crewsStateBox,
    globalMessageStateNotifier: globalMessageStateNotifier,
  );
});

class CrewsStateNotifier extends StateNotifier<CrewsState> {
  CrewsStateNotifier({
    required CrewsRepository crewsRepository,
    required Box<CrewsState> crewsStateBox,
    required GlobalMessageStateNotifier globalMessageStateNotifier,
  })  : _crewsRepository = crewsRepository,
        _crewsStateBox = crewsStateBox,
        _globalMessageStateNotifier = globalMessageStateNotifier,
        super(const CrewsState()) {
    _load();
    // getAll();
  }

  final GlobalMessageStateNotifier _globalMessageStateNotifier;
  final Box<CrewsState> _crewsStateBox;
  final CrewsRepository _crewsRepository;

  Future<void> getAll() async {
    try {
      final crews = await _crewsRepository.getAll();

      await _updateState(crews: crews.toList());
    } catch (_) {
      _globalMessageStateNotifier.showSnackBar(
        message:
            'An error occurred while fetching crews, please check your internet connection and try again.',
        category: GlobalMessageCategory.error,
        showCloseButton: true,
      );
    }
  }

  Future<void> getById(String identifier) async {
    try {
      final crew = await _crewsRepository.getById(identifier);

      await _updateState(crews: [crew!]);
    } on ApiException catch (exception) {
      if (exception.statusCode == 404) {
        _globalMessageStateNotifier.showSnackBar(
          message: 'Launch not found.',
          category: GlobalMessageCategory.error,
          showCloseButton: true,
        );
      } else {
        _globalMessageStateNotifier.showSnackBar(
          message:
              'An error occurred while fetching launches, please check your internet connection and try again.',
          category: GlobalMessageCategory.error,
          showCloseButton: true,
        );
      }
    }
  }

  Future<void> _updateState({
    List<Crew>? crews,
    CrewsFilterData? crewsFilterData,
  }) async {
    state = state.copyWith(
      crews: crews ?? state.crews,
      filterData: crewsFilterData ?? state.filterData,
    );

    await _save();
  }

  Future<void> _save() async {
    await _crewsStateBox.put('crewsState', state);
  }

  Future<void> _load() async {
    final crewsState = _crewsStateBox.get('crewsState');

    if (crewsState != null) {
      state = crewsState;
    }
  }
}
