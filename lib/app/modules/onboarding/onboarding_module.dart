import 'package:go_router/go_router.dart';
import 'package:titan_crypto/app/modules/onboarding/onboarding_page.dart';

class OnboardingModule extends GoRoute {
  OnboardingModule({
    required super.path,
  }) : super(
          builder: (context, state) {
            return const OnboardingPage();
          },
        );
}
