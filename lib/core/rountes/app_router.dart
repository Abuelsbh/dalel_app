import 'package:go_router/go_router.dart';
import '../../feature/onboarding/presentation/views/on_boarding_view.dart';
import '../../feature/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context,state) => SplashView(),
  ),
  GoRoute(
    path: "/onBoarding",
    builder: (context,state) => OnBoardingView(),
  ),
  ]
);