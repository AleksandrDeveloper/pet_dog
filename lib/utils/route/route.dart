import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:testtest/modals/user.dart';
import 'package:testtest/screens/export.dart';
import 'package:testtest/utils/route/transition_page.dart';

class AppRoute {
  GoRouter appRoute = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomeScreen(),
        routes: [
          GoRoute(
              path: 'auth',
              pageBuilder: (context, state) {
                final User user = state.extra as User;
                return transitionPage(
                  child: AuthScreen(user: user),
                  key: state.pageKey,
                );
              }),
          GoRoute(
            path: 'splash',
            pageBuilder: (context, state) {
              return transitionPage(
                child: const SplashScreen(),
                key: state.pageKey,
              );
            },
          ),
        ],
      ),
    ],
  );
}
