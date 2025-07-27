import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_flutter_sckeleton/features/auth/login_screen.dart';
import 'package:new_flutter_sckeleton/features/splash/splash_screen.dart';
import 'package:new_flutter_sckeleton/shared/app_enums.dart';

class AppRouteHelper {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: AppRouteName.splash.name,
        path: '/',
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        name: AppRouteName.login.name,
        path: '/login',
        pageBuilder: (BuildContext context, GoRouterState state) =>
            FadeTransitionPage(key: state.pageKey, child: LoginScreen()),
      ),
    ],
  );
}

class FadeTransitionPage extends CustomTransitionPage<void> {
  /// Creates a [FadeTransitionPage].
  FadeTransitionPage({required LocalKey super.key, required super.child})
    : super(
        transitionsBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) => FadeTransition(
              opacity: animation.drive(_curveTween),
              child: child,
            ),
      );

  static final CurveTween _curveTween = CurveTween(curve: Curves.easeIn);
}
