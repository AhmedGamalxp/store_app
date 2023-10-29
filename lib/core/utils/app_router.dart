import 'package:go_router/go_router.dart';
import 'package:store_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
