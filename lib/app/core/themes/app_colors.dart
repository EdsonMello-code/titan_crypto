import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color black;
  final Color green;
  final Color red;
  final Color grey;
  final Color white;
  final Color transparent;
  final Color disableBackground;
  final Color textButtonColor;

  const AppColors({
    required this.black,
    required this.green,
    required this.red,
    required this.grey,
    required this.white,
    required this.transparent,
    required this.disableBackground,
    required this.textButtonColor,
  });

  @override
  ThemeExtension<AppColors> copyWith({
    Color? black,
    Color? green,
    Color? red,
    Color? grey,
    Color? white,
    Color? disableBackground,
    Color? transparent,
    Color? textButtonColor,
  }) {
    return AppColors(
      black: black ?? this.black,
      green: green ?? this.green,
      red: red ?? this.red,
      grey: grey ?? this.grey,
      white: white ?? this.white,
      transparent: transparent ?? this.transparent,
      disableBackground: disableBackground ?? this.disableBackground,
      textButtonColor: textButtonColor ?? this.textButtonColor,
    );
  }

  @override
  AppColors lerp(
    covariant AppColors? other,
    double t,
  ) {
    return AppColors(
      black: Color.lerp(
        black,
        other!.black,
        t,
      )!,
      green: Color.lerp(
        green,
        other.green,
        t,
      )!,
      red: Color.lerp(
        red,
        other.red,
        t,
      )!,
      grey: Color.lerp(
        grey,
        other.grey,
        t,
      )!,
      white: Color.lerp(
        white,
        other.white,
        t,
      )!,
      transparent: Color.lerp(
        transparent,
        other.transparent,
        t,
      )!,
      disableBackground: Color.lerp(
        disableBackground,
        other.disableBackground,
        t,
      )!,
      textButtonColor: Color.lerp(
        textButtonColor,
        other.textButtonColor,
        t,
      )!,
    );
  }
}
