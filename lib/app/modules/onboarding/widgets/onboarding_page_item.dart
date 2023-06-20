import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/extensions/app_theme_extension.dart';
import 'package:titan_crypto/app/core/widgets/text_widget.dart';

class OnboardingPageItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const OnboardingPageItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 41.0),
      child: Center(
        child: SizedBox(
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: TextWidget(
                  title,
                  style: TextStyle(
                    color: context.appColors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              TextWidget(
                description,
                style: const TextStyle(
                  color: Color(0xFF777777),
                ),
                align: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
