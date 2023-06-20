import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/widgets/buttons/common_button_widget.dart';
import 'package:titan_crypto/app/core/widgets/text_widget.dart';
import 'package:titan_crypto/app/modules/onboarding/widgets/onboarding_dot_widget.dart';
import 'package:titan_crypto/app/modules/onboarding/widgets/onboarding_page_item.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final pageController = PageController();

  final pages = [
    const OnboardingPageItem(
      title: 'Trade anytime anywhere',
      imageUrl: 'assets/images/onboarding1.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
    ),
    const OnboardingPageItem(
      title: 'Trade anytime anywhere',
      imageUrl: 'assets/images/onboarding2.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
    ),
    const OnboardingPageItem(
      title: 'Trade anytime anywhere',
      imageUrl: 'assets/images/onboarding3.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 4,
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return pages[index];
              },
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF161C22).withOpacity(0),
                        const Color(0xFF161C22),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: AnimatedBuilder(
                          animation: pageController,
                          builder: (context, _) {
                            return OnBoardingDotWidget(
                              dotsLenght: pages.length,
                              currentIndexDot:
                                  (pageController.page?.toInt() ?? 0),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 54.0),
                        child: SizedBox(
                          width: 180,
                          child: CommonButtonWidget(
                            onPressed: () {
                              if ((pageController.page?.toInt() ?? 0) <
                                  (pages.length - 1)) {
                                pageController.nextPage(
                                  curve: Curves.decelerate,
                                  duration: const Duration(
                                    milliseconds: 600,
                                  ),
                                );
                              } else {}
                            },
                            child: const TextWidget(
                              'Next',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
