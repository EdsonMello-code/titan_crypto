import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/widgets/dot_widget.dart';

class OnBoardingDotWidget extends StatelessWidget {
  final int dotsLenght;
  final int currentIndexDot;

  const OnBoardingDotWidget({
    super.key,
    required this.dotsLenght,
    required this.currentIndexDot,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        dotsLenght,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: TweenAnimationBuilder<double>(
              duration: const Duration(
                milliseconds: 1000,
              ),
              tween: Tween(
                begin: 0.0,
                end: 1.0,
              ),
              builder: (context, interpolation, _) {
                return DotWidget(
                  color: index == currentIndexDot
                      ? Color.lerp(
                          const Color(0xFF252E35),
                          const Color(0xFF777777),
                          interpolation,
                        )!
                      : Color.lerp(
                          const Color(0xFF777777),
                          const Color(0xFF252E35),
                          interpolation,
                        )!,
                );
              }),
        ),
      ),
    );
  }
}
