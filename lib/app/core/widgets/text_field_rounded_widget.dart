import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:titan_crypto/app/core/types/types.dart';

class TextFieldRoundedWidget extends StatelessWidget {
  final String hint;
  final TextAlign alignment;
  final EdgeInsets? contentPadding;
  final double fontSize;
  final int? textLenght;
  final OnChanged<String?>? onChanged;
  final TextInputType keyboardType;
  final bool isCollapsed;

  const TextFieldRoundedWidget({
    super.key,
    this.hint = '',
    this.alignment = TextAlign.start,
    this.contentPadding,
    this.fontSize = 14,
    this.textLenght,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.isCollapsed = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: 54,
      width: size.width,
      child: TextFormField(
        expands: true,
        maxLines: null,
        onChanged: onChanged,
        maxLength: textLenght,
        textAlign: alignment,
        keyboardType: keyboardType,
        style: GoogleFonts.ubuntu(
          fontSize: fontSize,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF777777),
        ),
        decoration: InputDecoration(
          hintText: hint,
          isCollapsed: isCollapsed,
          counterText: '',
          contentPadding: contentPadding ??
              const EdgeInsets.only(
                top: 20,
                left: 20,
              ),
        ),
      ),
    );
  }
}
