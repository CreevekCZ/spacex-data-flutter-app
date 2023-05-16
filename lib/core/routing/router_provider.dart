import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:palestine_console/palestine_console.dart';
import 'package:spacexplorer/core/routing/routes.dart';
import 'package:spacexplorer/features/launches/view/launches_screen.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: Routes.home,
    observers: [],
    redirect: (context, state) {
      Print.green('ROUTER REDIRECT: ${state.location}', name: 'APP');
      return null;
    },
    routes: [
      GoRoute(
        path: Routes.home,
        pageBuilder: (BuildContext context, GoRouterState state) =>
            const MaterialPage(child: LaunchesScreen()),
      ),
      // GoRoute(
      //   path: '/page-with-parameter/:id',
      //   pageBuilder: (BuildContext context, GoRouterState state) {
      //     final id = int.parse(state.params['id']!);
      //     return MaterialPage(child: Screen(id: id));
      //   },
      // ),
    ],
  ),
);
