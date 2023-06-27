import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/widgets/buttons/common_button_widget.dart';
import 'package:titan_crypto/app/core/widgets/text_field_rounded_widget.dart';
import 'package:titan_crypto/app/core/widgets/text_widget.dart';
import 'package:titan_crypto/app/modules/authentication/pages/widgets/authentication_back_button_widget.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.paddingOf(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 32 + padding.top,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 37.0),
              child: AuthenticationBackButtonWidget(
                title: 'Sign Up',
              ),
            ),
            TextWidget(
              'Register with mobile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.84,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: TextWidget(
                'Please type your number, then we’ll send a verification code for authentication.',
                style: TextStyle(
                  color: Color(0xFFA6AEB6),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.37,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 56.0,
                bottom: 60.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 12.0),
                    child: TextWidget(
                      'Mobile Number',
                      style: TextStyle(
                        color: Color(0xFFA6AEB6),
                        fontSize: 14,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.37,
                      ),
                    ),
                  ),
                  TextFieldRoundedWidget(
                    hint: 'Enter your mobile',
                  ),
                ],
              ),
            ),
            CommonButtonWidget(
              child: TextWidget(
                'Send OTP',
                style: TextStyle(
                  color: Color(0xFF171D22),
                  fontSize: 18,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.48,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
