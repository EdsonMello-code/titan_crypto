import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/extensions/app_theme_extension.dart';
import 'package:titan_crypto/app/core/widgets/buttons/button_base_widget.dart';

class OultlinedButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;

  const OultlinedButtonWidget({
    super.key,
    this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonBaseWidget(
      onPressed: onPressed,
      backgrounColor: context.appColors.transparent,
      border: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
          side: BorderSide(
            color: context.appColors.green,
          )),
      child: child,
    );
  }
}
