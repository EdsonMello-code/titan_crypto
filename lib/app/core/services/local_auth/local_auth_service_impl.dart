import 'package:local_auth/local_auth.dart';
import 'package:titan_crypto/app/core/services/local_auth/local_auth_service.dart';

class LocalAuthServiceImpl implements LocalAuthService {
  final LocalAuthentication localAuthentication;

  const LocalAuthServiceImpl({
    required this.localAuthentication,
  });

  @override
  Future<bool> doBiometricAuthentication() async {
    final biometrics = await localAuthentication.getAvailableBiometrics();

    if (biometrics.isNotEmpty) {
      return await localAuthentication.authenticate(
        localizedReason: 'Preciso autenticar',
      );
    }

    return false;
  }
}
