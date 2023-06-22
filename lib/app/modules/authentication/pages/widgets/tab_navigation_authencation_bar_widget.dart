import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/extensions/app_theme_extension.dart';
import 'package:titan_crypto/app/core/types/types.dart';
import 'package:titan_crypto/app/core/widgets/text_widget.dart';

class TabNavigationAuthenticationWidget extends StatefulWidget {
  final OnChanged<int>? onChanged;

  final String firstTabTitle;
  final String secondTabTitle;

  const TabNavigationAuthenticationWidget({
    super.key,
    this.onChanged,
    this.firstTabTitle = '',
    this.secondTabTitle = '',
  });

  @override
  State<TabNavigationAuthenticationWidget> createState() =>
      _TabNavigationSignupState();
}

class _TabNavigationSignupState
    extends State<TabNavigationAuthenticationWidget> {
  double currentPositionX = -1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth,
          decoration: BoxDecoration(
            color: const Color(0xFF161C22),
            borderRadius: BorderRadius.circular(12),
          ),
          height: 46,
          child: Stack(
            children: [
              AnimatedAlign(
                curve: Curves.bounceOut,
                duration: const Duration(
                  milliseconds: 600,
                ),
                alignment: Alignment(currentPositionX, 0),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: context.appColors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: constraints.maxWidth / 2,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.onChanged?.call(0);

                    currentPositionX = -1;
                  });
                },
                child: Align(
                  alignment: const Alignment(-1, 0),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: context.appColors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: const Border.fromBorderSide(
                        BorderSide.none,
                      ),
                    ),
                    width: constraints.maxWidth / 2,
                    child: TextWidget(
                      widget.firstTabTitle,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF777777),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.onChanged?.call(1);

                    currentPositionX = 1;
                  });
                },
                child: Align(
                  alignment: const Alignment(1, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: context.appColors.transparent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: constraints.maxWidth / 2,
                      child: TextWidget(
                        widget.secondTabTitle,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF777777),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
