import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:titan_crypto/app/core/extensions/app_theme_extension.dart';

class IconsWidget extends StatelessWidget {
  final String url;
  final double size;
  final Color? color;

  const IconsWidget._({
    required this.url,
    required this.size,
    this.color,
  });

  factory IconsWidget.fingerprint({
    final double size = 24,
    final Color? color,
  }) {
    return IconsWidget._(
      url: 'assets/icons/fingerprint.svg',
      size: size,
      color: color,
    );
  }

  factory IconsWidget.addCircle({
    final double size = 24,
    final Color? color,
  }) {
    return IconsWidget._(
      url: 'assets/icons/add_circle.svg',
      size: size,
      color: color,
    );
  }

  factory IconsWidget.close({
    final double size = 24,
    final Color? color,
  }) {
    return IconsWidget._(
      url: 'assets/icons/close.svg',
      size: size,
      color: color,
    );
  }

  factory IconsWidget.candle({
    final double size = 24,
    final Color? color,
  }) {
    return IconsWidget._(
      url: 'assets/icons/candle.svg',
      size: size,
      color: color,
    );
  }

  factory IconsWidget.back({
    final double size = 24,
    final Color? color,
  }) {
    return IconsWidget._(
      url: 'assets/icons/back.svg',
      size: size,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(
        begin: 1,
        end: 0,
      ),
      duration: const Duration(
        milliseconds: 600,
      ),
      child: SvgPicture.asset(
        url,
        height: size,
        width: size,
        color: color ?? context.appColors.black,
      ),
      builder: (context, value, child) {
        return child!;
      },
    );
  }
}
