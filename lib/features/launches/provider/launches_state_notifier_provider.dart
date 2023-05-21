import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/core/enums/global_message_category.dart';
import 'package:spacexplorer/core/model/exceptions/api_exception.dart';
import 'package:spacexplorer/core/providers/global_message_state_notifier.dart';
import 'package:spacexplorer/features/launches/model/launch/launch.dart';
import 'package:spacexplorer/features/launches/model/launches_filter_data/launches_filter_data.dart';
import 'package:spacexplorer/features/launches/model/launches_state/launches_state.dart';
import 'package:spacexplorer/features/launches/provider/launches_repository_provider.dart';
import 'package:spacexplorer/features/launches/repository/launches_repository/launches_repository.dart';

final launchesStateNotifierProvider =
    StateNotifierProvider<LaunchesStateNotifier, LaunchesState>((ref) {
  final launchesRepository = ref.read(launchesRepositoryProvider);
  final launchesStateBox = Hive.box<LaunchesState>('launchesState');
  final globalMessageStateNotifier =
      ref.read(globalMessageStateNotifierProvider.notifier);

  return LaunchesStateNotifier(
    launchesRepository: launchesRepository,
    launchesStateBox: launchesStateBox,
    globalMessageStateNotifier: globalMessageStateNotifier,
  );
});

class LaunchesStateNotifier extends StateNotifier<LaunchesState> {
  LaunchesStateNotifier({
    required LaunchesRepository launchesRepository,
    required Box<LaunchesState> launchesStateBox,
    required GlobalMessageStateNotifier globalMessageStateNotifier,
  })  : _launchesRepository = launchesRepository,
        _launchesStateBox = launchesStateBox,
        _globalMessageStateNotifier = globalMessageStateNotifier,
        super(const LaunchesState()) {
    _load();
    getAll();
  }

  final LaunchesRepository _launchesRepository;
  final Box<LaunchesState> _launchesStateBox;
  final GlobalMessageStateNotifier _globalMessageStateNotifier;

  Future<void> getAll() async {
    try {
      final launches = await _launchesRepository.getAll();

      await _updateState(launches: launches.reversed.toList());
    } catch (_) {
      _globalMessageStateNotifier.showSnackBar(
        message:
            'An error occurred while fetching launches, please check your internet connection and try again.',
        category: GlobalMessageCategory.error,
        showCloseButton: true,
      );
    }
  }

  Future<Launch?> getById(String id) async {
    Launch? launch = state.getLaunchById(id);

    if (launch == null) {
      try {
        launch = await _launchesRepository.getById(id);

        if (launch != null) {
          await _addOrUpdateLaunch(launch);
        }
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
    return launch;
  }

  Future<void> filter(LaunchesFilterData filterData) async {
    await _updateState(filterData: filterData);
  }

  Future<void> _updateState({
    List<Launch>? launches,
    LaunchesFilterData? filterData,
  }) async {
    state = state.copyWith(
      launches: launches ?? state.launches,
      filterData: filterData ?? state.filterData,
      updatedAt: DateTime.now(),
    );

    await _save();
  }

  Future<void> _addOrUpdateLaunch(Launch launch) async {
    state = state.copyWithAddOrUpdatedLaunch(launch);

    await _save();
  }

  Future<void> _save() async {
    await _launchesStateBox.put('launchesState', state);
  }

  Future<void> _load() async {
    final launchesState = _launchesStateBox.get('launchesState');

    if (launchesState != null) {
      state = launchesState;
    }
  }
}
