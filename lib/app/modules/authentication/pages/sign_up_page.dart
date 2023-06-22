import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/extensions/app_theme_extension.dart';
import 'package:titan_crypto/app/core/widgets/buttons/common_button_widget.dart';
import 'package:titan_crypto/app/core/widgets/buttons/google_button_widget%20copy.dart';
import 'package:titan_crypto/app/core/widgets/text_field_rounded_widget.dart';
import 'package:titan_crypto/app/core/widgets/text_widget.dart';

import '../../../core/widgets/buttons/facebook_button_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 39.0),
          child: TextWidget(
            'Sign up',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: context.appColors.white,
            ),
          ),
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 13.0),
              child: TextWidget(
                'Email',
                style: TextStyle(
                  color: Color(0xFFA7AFB7),
                ),
              ),
            ),
            TextFieldRoundedWidget(
              hint: 'Enter your email',
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 13.0),
                child: TextWidget(
                  'Password',
                  style: TextStyle(
                    color: Color(0xFFA7AFB7),
                  ),
                ),
              ),
              TextFieldRoundedWidget(
                hint: 'Enter your password',
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 36.0),
          child: CommonButtonWidget(
            child: TextWidget('Sign up'),
          ),
        ),
        const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 24.0),
            child: TextWidget(
              'Or login with ',
              style: TextStyle(
                color: Color(0xFF777777),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Row(
            children: [
              Expanded(
                child: FacebookButtonWidget(
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Expanded(
                child: GoogleButtonWidget(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
