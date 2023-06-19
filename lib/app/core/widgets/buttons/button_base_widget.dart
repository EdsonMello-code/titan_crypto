import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonBaseWidget extends StatelessWidget {
  final Widget? child;
  final Color? backgrounColor;
  final Size? size;
  final VoidCallback? onPressed;
  final OutlinedBorder? border;

  const ButtonBaseWidget({
    super.key,
    this.child,
    this.backgrounColor,
    this.size,
    this.onPressed,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return TweenAnimationBuilder<double>(
      duration: const Duration(
        milliseconds: 600,
      ),
      tween: Tween(
        begin: 0.0,
        end: 1.0,
      ),
      curve: Curves.decelerate,
      builder: (context, value, _) {
        final interpolationToScale = lerpDouble(0.8, 1.0, value);
        return Opacity(
          opacity: value,
          child: Transform.scale(
            scale: interpolationToScale,
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(0),
                shape: MaterialStatePropertyAll(
                  border ??
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                ),
                fixedSize: MaterialStatePropertyAll(
                  size ??
                      Size(
                        screenSize.width,
                        54,
                      ),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  backgrounColor,
                ),
              ),
              onPressed: onPressed,
              child: child,
            ),
          ),
        );
      },
    );
  }
}
