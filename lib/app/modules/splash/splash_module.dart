import 'package:go_router/go_router.dart';
import 'package:titan_crypto/app/modules/splash/splash_page.dart';

class SplashModule extends GoRoute {
  SplashModule({
    required super.path,
  }) : super(
          builder: (context, state) {
            return const SplashPage();
          },
        );
}
