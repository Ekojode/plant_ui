import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utilities/utilities.dart';
import '../widgets/widgets.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: isMobile(context) ? 750 : 850,
                width: double.infinity,
                child: PageView.builder(
                    controller: pageController,
                    itemCount: 3,
                    itemBuilder: (context, i) {
                      return OnboardingWidget(
                          pageController: pageController, i: i);
                    }),
              ),
              Positioned(
                top: height(context) < 750
                    ? 375
                    : isMobile(context)
                        ? 470
                        : 550,
                child: SmoothPageIndicator(
                  count: 3,
                  effect: const WormEffect(
                      activeDotColor: AppColors.altPrimary,
                      dotHeight: 6,
                      dotWidth: 20,
                      spacing: 4),
                  controller: pageController,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
