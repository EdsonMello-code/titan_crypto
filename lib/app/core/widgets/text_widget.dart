import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:titan_crypto/app/core/extensions/app_theme_extension.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? align;

  const TextWidget(
    this.text, {
    super.key,
    this.style,
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    final currentStyle = GoogleFonts.ubuntu(
      color: context.appColors.black,
    ).merge(style);
    return Text(
      text,
      textAlign: align,
      style: currentStyle,
    );
  }
}
