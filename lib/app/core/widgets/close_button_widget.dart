import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:titan_crypto/app/core/widgets/icons_widget.dart';

class CloseButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;

  const CloseButtonWidget({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 1000),
      curve: Curves.decelerate,
      child: GestureDetector(
        onTap: onPressed ?? context.pop,
        child: IconsWidget.close(
          color: const Color(0xFF777777),
        ),
      ),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: child,
        );
      },
    );
  }
}
