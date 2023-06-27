import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/widgets/buttons/common_button_widget.dart';
import 'package:titan_crypto/app/core/widgets/buttons/text_button_widget.dart';
import 'package:titan_crypto/app/core/widgets/text_time_widget.dart';
import 'package:titan_crypto/app/core/widgets/text_widget.dart';
import 'package:titan_crypto/app/modules/authentication/pages/widgets/authentication_back_button_widget.dart';
import 'package:titan_crypto/app/modules/authentication/pages/widgets/authentication_code_widget.dart';

class ValidationCodePage extends StatelessWidget {
  const ValidationCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.paddingOf(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 25.0,
          right: 25.0,
          top: 32 + padding.top,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AuthenticationBackButtonWidget(
              title: 'Verification',
            ),
            const Padding(
              padding: EdgeInsets.only(top: 37.0),
              child: TextWidget(
                'Enter your code',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.84,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: TextWidget(
                'Please type the code we sent to',
                style: TextStyle(
                  color: Color(0xFFA6AEB6),
                  fontSize: 14,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.37,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 4.0,
                bottom: 32,
              ),
              child: TextWidget(
                '+1 234 567 8900',
                style: TextStyle(
                  color: Color(0xFF5ED5A8),
                  fontSize: 14,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.37,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: AuthenticationCodeWidget(),
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: TextTimeWidget(
                      text: 'Resend code ',
                      dateTime: DateTime(0, 0, 0, 0, 0, 30),
                      style: const TextStyle(
                        color: Color(0xFFA6AEB6),
                        fontSize: 14,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.37,
                      ),
                    ),
                  ),
                  const TextButtonWidget(
                    title: 'Resend Link',
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 55.0),
              child: CommonButtonWidget(
                child: TextWidget(
                  'Continue',
                  style: TextStyle(
                    color: Color(0xFF171D22),
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.48,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
