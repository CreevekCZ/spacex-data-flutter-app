import 'dart:async';
import 'package:flutter/foundation.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:spacexplorer/features/crews/model/crew/crew.dart';
import 'package:spacexplorer/features/crews/model/crews_filter_data/crews_filter_data.dart';
import 'package:spacexplorer/features/crews/model/crews_state/crews_state.dart';
import 'package:spacexplorer/features/launches/model/launch/launch.dart';
import 'package:spacexplorer/features/launches/model/launch_failure/launch_failure.dart';
import 'package:spacexplorer/features/launches/model/launch_links/launch_links.dart';
import 'package:spacexplorer/features/launches/model/launch_patch/launch_patch.dart';
import 'package:spacexplorer/features/launches/model/launches_filter_data/launches_filter_data.dart';
import 'package:spacexplorer/features/launches/model/launches_state/launches_state.dart';

class AppSetup {
  Future<void> init() async {
    _setupWeb();

    await _setupHive();
  }

  Future<void> _setupHive() async {
    await Hive.initFlutter();

    Hive
      ..registerAdapter(LaunchesFilterDataAdapter()) // typeId: 1
      ..registerAdapter(LaunchAdapter()) // typeId: 2
      ..registerAdapter(LaunchFailureAdapter()) // typeId: 3
      ..registerAdapter(LaunchLinksAdapter()) // typeId: 4
      ..registerAdapter(LaunchPatchAdapter()) // typeId: 5
      ..registerAdapter(LaunchesStateAdapter()) // typeId: 6
      ..registerAdapter(CrewAdapter()) // typeId: 7
      ..registerAdapter(CrewsFilterDataAdapter()) // typeId: 8
      ..registerAdapter(CrewsStateAdapter()); // typeId: 9

    await Future.wait([
      Hive.openBox<LaunchesState>('launchesState'),
      Hive.openBox<CrewsState>('crewsState'),
    ]);
  }

  void _setupWeb() {
    if (!kIsWeb) {
      return;
    }

    usePathUrlStrategy();
  }
}
