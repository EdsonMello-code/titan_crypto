import 'package:go_router/go_router.dart';
import 'package:titan_crypto/app/modules/authentication/authentication_module.dart';
import 'package:titan_crypto/app/modules/onboarding/onboarding_module.dart';
import 'package:titan_crypto/app/modules/splash/splash_module.dart';

final appModule = GoRouter(
  initialLocation: '/authentication',
  routes: [
    SplashModule(path: '/'),
    OnboardingModule(path: '/onboarding'),
    AuthenticationModule(path: '/authentication'),
  ],
);
