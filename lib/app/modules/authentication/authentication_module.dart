import 'package:go_router/go_router.dart';
import 'package:local_auth/local_auth.dart';
import 'package:titan_crypto/app/core/services/local_auth/local_auth_service_impl.dart';
import 'package:titan_crypto/app/modules/authentication/pages/authentication_page.dart';

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
}
