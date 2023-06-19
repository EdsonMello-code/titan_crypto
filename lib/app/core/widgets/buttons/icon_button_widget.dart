import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onPressed;

  const IconButtonWidget({
    super.key,
    this.child,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: child,
    );
  }
}
