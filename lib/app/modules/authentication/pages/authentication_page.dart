import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/services/local_auth/local_auth_service.dart';
import 'package:titan_crypto/app/modules/authentication/pages/sign_in_page.dart';
import 'package:titan_crypto/app/modules/authentication/pages/sign_up_page.dart';
import 'package:titan_crypto/app/modules/authentication/pages/widgets/tab_navigation_authencation_bar_widget.dart';

class AuthenticationPage extends StatefulWidget {
  final LocalAuthService localAuthService;

  const AuthenticationPage({
    super.key,
    required this.localAuthService,
  });

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.paddingOf(context);
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Padding(
        padding: padding,
        child: SingleChildScrollView(
          padding: padding.copyWith(
            left: 24.0,
            top: 47.0,
            right: 24.0,
          ),
          child: Container(
            constraints: BoxConstraints(
              maxHeight: size.height - (padding.top + 47),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: TabNavigationAuthenticationWidget(
                    firstTabTitle: 'Sign up',
                    secondTabTitle: 'Sign in',
                    onChanged: pageController.jumpToPage,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Expanded(
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: pageController,
                    children: [
                      const SignUpPage(),
                      SignInPage(
                        localAuthService: widget.localAuthService,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
