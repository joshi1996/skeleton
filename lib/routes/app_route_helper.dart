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
        builder: (context, state) => LoginScreen(),
      ),
    ],
  );
}
