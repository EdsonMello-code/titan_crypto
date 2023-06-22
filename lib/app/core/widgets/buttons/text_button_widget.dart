import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/extensions/app_theme_extension.dart';
import 'package:titan_crypto/app/core/widgets/text_widget.dart';

class TextButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;

  const TextButtonWidget({super.key, this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: TextWidget(
        title,
        style: TextStyle(
          color: context.appColors.green,
        ),
      ),
    );
  }
}
