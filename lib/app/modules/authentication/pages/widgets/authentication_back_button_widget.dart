import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/icons_widget.dart';
import '../../../../core/widgets/text_widget.dart';

class AuthenticationBackButtonWidget extends StatelessWidget {
  final String title;

  const AuthenticationBackButtonWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 14.0),
          child: GestureDetector(
            onTap: context.pop,
            child: IconsWidget.back(
              color: const Color(0xFF777777),
            ),
          ),
        ),
        TextWidget(
          title,
          style: const TextStyle(
            color: Color(0xFFA6AEB6),
            fontSize: 18,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.48,
          ),
        ),
      ],
    );
  }
}
