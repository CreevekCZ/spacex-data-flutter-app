import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:palestine_console/palestine_console.dart';
import 'package:spacexplorer/core/routing/routes.dart';
import 'package:spacexplorer/core/widgets/screen_wrapper.dart';
import 'package:spacexplorer/features/launches/view/home_screen.dart';
import 'package:spacexplorer/features/launches/view/launch_detail_screen.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: Routes.home,
    observers: [],
    redirect: (context, state) {
      Print.green('ROUTER REDIRECT: ${state.location}', name: 'APP');
      return null;
    },
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return ScreenWrapper(child: child);
        },
        routes: [
          GoRoute(
            path: Routes.home,
            pageBuilder: (BuildContext context, GoRouterState state) =>
                const MaterialPage(child: HomeScreen()),
          ),
          GoRoute(
            path: '${Routes.launchDetail}/:id',
            pageBuilder: (BuildContext context, GoRouterState state) {
              final id = state.pathParameters['id'];
              return MaterialPage(
                child: HeroControllerScope(
                  controller: MaterialApp.createMaterialHeroController(),
                  child: LaunchDetailScreen(launchId: id),
                ),
              );
            },
          ),
        ],
      )
    ],
  ),
);
