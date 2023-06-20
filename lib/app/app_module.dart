import 'package:go_router/go_router.dart';
import 'package:titan_crypto/app/modules/onboarding/onboarding_module.dart';
import 'package:titan_crypto/app/modules/splash/splash_module.dart';

final appModule = GoRouter(
  initialLocation: '/onboarding',
  routes: [
    SplashModule(path: '/'),
    OnboardingModule(path: '/onboarding'),
  ],
);
