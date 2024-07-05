import 'package:bookly/features/home/data/presentation/views/view_model/views/home_view.dart';
import 'package:bookly/features/splash/presentation/manager/views/SplashView.dart';
import 'package:go_router/go_router.dart';

abstract class app_routers {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/home_view',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
