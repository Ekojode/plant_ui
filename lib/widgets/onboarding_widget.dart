import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/models.dart';
import '../utilities/utilities.dart';
import 'onboarding_text.dart';

class OnboardingWidget extends StatelessWidget {
  final PageController pageController;
  final int i;

  const OnboardingWidget(
      {super.key, required this.pageController, required this.i});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
              onPressed: () {
                if (i != 2) {
                  pageController.jumpToPage(2);
                }
              },
              child: Text(
                (i != 2) ? "Skip" : "",
                style: const TextStyle(color: AppColors.black, fontSize: 18),
              )),
        ),
        const SizedBox(height: 10),
        SizedBox(
            height: height(context) < 750
                ? 300
                : isMobile(context)
                    ? 400
                    : 500,
            child: Image.asset("assets/onboarding/onboarding${i + 1}.png")),
        const SizedBox(height: 30),
        OnboardingText(
            mainText: onboardTexts[i].mainText,
            finalText: onboardTexts[i].finalText),
        const SizedBox(height: 20),
        InkWell(
          onTap: () {
            if (i == 2) {
              context.pushNamed(AppRouter.dashboard);
            } else {
              pageController.animateToPage(i + 1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            }
          },
          child: Container(
            height: 90,
            width: 90,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.arrow_right_alt_rounded,
              size: 50,
              color: AppColors.white,
            ),
          ),
        )
      ],
    );
  }
}
