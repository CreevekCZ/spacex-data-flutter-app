import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/core/const.dart';
import 'package:spacexplorer/core/providers/scaffold_messager_key_provider.dart';
import 'package:spacexplorer/core/routing/router_provider.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);

    return MaterialApp.router(
      title: 'SpaceXplorer',
      scaffoldMessengerKey: ref.read(scaffoldMessengerKeyProvider),
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Const.primary,
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
