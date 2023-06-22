import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldRoundedWidget extends StatelessWidget {
  final String hint;
  const TextFieldRoundedWidget({super.key, this.hint = ''});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: 54,
      width: size.width,
      child: TextFormField(
        expands: true,
        maxLines: null,
        style: GoogleFonts.ubuntu(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF777777),
        ),
        decoration: InputDecoration(
          hintText: hint,
          contentPadding: const EdgeInsets.only(
            top: 20,
            left: 20,
          ),
        ),
      ),
    );
  }
}
