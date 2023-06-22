import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/extensions/app_theme_extension.dart';
import 'package:titan_crypto/app/core/widgets/text_widget.dart';

import '../../services/local_auth/debounce/debounce_service.dart';
import '../../services/local_auth/debounce/debounce_service_impl.dart';

class TextButtonWidget extends StatefulWidget {
  final VoidCallback? onPressed;
  final String title;

  const TextButtonWidget({super.key, this.onPressed, required this.title});

  @override
  State<TextButtonWidget> createState() => _TextButtonWidgetState();
}

class _TextButtonWidgetState extends State<TextButtonWidget> {
  final DebounceService debounceService = DebounceServiceImpl();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debounceService(widget.onPressed ?? () {});
      },
      child: TextWidget(
        widget.title,
        style: TextStyle(
          color: context.appColors.green,
        ),
      ),
    );
  }
}
