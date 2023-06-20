import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  final Color? color;
  final Size? size;

  const DotWidget({
    super.key,
    this.color,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size?.width ?? 12.24,
      height: size?.height ?? 12.24,
      decoration: BoxDecoration(
        color: color ?? const Color(0XFF777777),
        shape: BoxShape.circle,
      ),
    );
  }
}
