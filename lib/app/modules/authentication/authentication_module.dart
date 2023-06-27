import 'package:go_router/go_router.dart';
import 'package:local_auth/local_auth.dart';
import 'package:titan_crypto/app/core/services/local_auth/local_auth_service_impl.dart';
import 'package:titan_crypto/app/modules/authentication/pages/authentication_page.dart';
import 'package:titan_crypto/app/modules/authentication/pages/reset_password_page.dart';
import 'package:titan_crypto/app/modules/authentication/pages/sign_up_success_page.dart';

class AuthenticationModule extends GoRoute {
  AuthenticationModule({required super.path})
      : super(
          builder: (context, state) {
            return AuthenticationPage(
              localAuthService: LocalAuthServiceImpl(
                localAuthentication: LocalAuthentication(),
              ),
            );
          },
        );

  @override
  List<RouteBase> get routes => [
        GoRoute(
          path: 'sign-up-success',
          builder: (context, state) {
            return const SignUpSuccessPage();
          },
        ),
        GoRoute(
          path: 'reset-password',
          builder: (context, state) {
            return const ResetPasswordPage();
          },
        ),
      ];
}
