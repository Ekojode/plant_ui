import 'package:flutter/material.dart';

import '../utilities/utilities.dart';

class OnboardingText extends StatelessWidget {
  final String mainText;
  final String finalText;
  const OnboardingText(
      {super.key, required this.mainText, required this.finalText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
          width: double.infinity,
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: mainText,
                  style: TextStyle(
                      fontSize: width(context) < 380 ? 30 : 45,
                      color: AppColors.black),
                  children: [
                    TextSpan(
                        text: finalText,
                        style: const TextStyle(fontWeight: FontWeight.bold))
                  ]))),
    );
  }
}
