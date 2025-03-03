import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/home/home_screen.dart';
import 'app_routes.dart';

class GoRouterConfiguration {
  GoRouter get router => _goRouter;
  final _rootNavigatorKey = GlobalKey<NavigatorState>();

  late final _goRouter = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: AppRoutes.splash,
    navigatorKey: _rootNavigatorKey,
    routes: [
      // GoRoute(
      //   path: AppRoutes.splash,
      //   name: AppRoutes.splash,
      //   builder: (context, state) => const SplashScreen(),
      // ),
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
