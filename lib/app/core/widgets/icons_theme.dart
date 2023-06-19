import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:titan_crypto/app/core/extensions/app_theme_extension.dart';

class IconsTheme extends StatelessWidget {
  final String url;
  final double size;
  final Color? color;

  const IconsTheme._({
    required this.url,
    required this.size,
    this.color,
  });

  factory IconsTheme.fingerprint({
    final double size = 24,
    final Color? color,
  }) {
    return IconsTheme._(
      url: 'assets/icons/fingerprint.svg',
      size: size,
      color: color,
    );
  }

  factory IconsTheme.candle({
    final double size = 24,
    final Color? color,
  }) {
    return IconsTheme._(
      url: 'assets/icons/candle.svg',
      size: size,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      url,
      height: size,
      width: size,
      color: color ?? context.appColors.black,
    );
  }
}
