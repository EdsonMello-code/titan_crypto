import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/extensions/app_theme_extension.dart';
import 'package:titan_crypto/app/core/widgets/buttons/common_button_widget.dart';
import 'package:titan_crypto/app/core/widgets/buttons/google_button_widget%20copy.dart';
import 'package:titan_crypto/app/core/widgets/buttons/text_button_widget.dart';
import 'package:titan_crypto/app/core/widgets/icons_widget.dart';
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
            'Sign in',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: context.appColors.white,
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextWidget(
                    'Email',
                    style: TextStyle(
                      color: Color(0xFFA7AFB7),
                    ),
                  ),
                  TextButtonWidget(
                    title: 'Sign in with mobile',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const TextFieldRoundedWidget(
              hint: 'Enter your mobile',
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 13.0),
                child: TextWidget(
                  'Password',
                  style: TextStyle(
                    color: Color(0xFFA7AFB7),
                  ),
                ),
              ),
              const TextFieldRoundedWidget(
                hint: 'Enter your mobile',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextButtonWidget(
                  title: 'Sign in with mobile',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 36.0),
          child: CommonButtonWidget(
            child: TextWidget('Sign in'),
          ),
        ),
        const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: TextWidget(
              'Or login with ',
              style: TextStyle(
                color: Color(0xFF777777),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
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
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: GestureDetector(
              onTap: () {},
              child: IconsWidget.fingerprint(
                color: context.appColors.green,
              ),
            ),
          ),
        ),
        const Center(
          child: Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: TextWidget(
              'Use fingerprint instead?',
              style: TextStyle(
                color: Color(0xFFA7AFB7),
              ),
            ),
          ),
        )
      ],
    );
  }
}
