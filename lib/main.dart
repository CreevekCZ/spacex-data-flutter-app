import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/core/app.dart';
import 'package:spacexplorer/core/app_setup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppSetup().init();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
