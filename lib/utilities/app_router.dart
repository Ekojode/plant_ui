import 'package:go_router/go_router.dart';

import '../screens/screens.dart';

class AppRouter {
  static const onboarding = '/onboarding';
  static const dashboard = '/dashboard';
  static const product = 'product';
}

final GoRouter _router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const OnboardingView(),
  ),
  GoRoute(
      path: AppRouter.dashboard,
      name: AppRouter.dashboard,
      builder: (context, state) => const DashboardView(),
      routes: [
        GoRoute(
          path: AppRouter.product,
          name: AppRouter.product,
          builder: (context, state) => const ProductView(),
        )
      ])
]);

GoRouter get appRouterConfig => _router;
