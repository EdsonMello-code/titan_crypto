import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/extensions/app_theme_extension.dart';

import 'button_base_widget.dart';

class CommonButtonWidget extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onPressed;
  final Color? color;
  final OutlinedBorder? outlinedBorder;

  const CommonButtonWidget({
    super.key,
    this.child,
    this.onPressed,
    this.color,
    this.outlinedBorder,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonBaseWidget(
      onPressed: onPressed,
      border: outlinedBorder,
      backgrounColor: color ?? context.appColors.green,
      child: child,
    );
  }
}
