import 'package:go_router/go_router.dart';

class AppRouteHelper {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
      )
    ],
  );
}
