import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theming/styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text:TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our  ',
            style: TextStyles.font13Gray400weight,
          ),
           TextSpan(
            text: 'Terms & Conditions',
            style: TextStyles.font13DarkBlue500weight,
          ),
          TextSpan(
            text: ' and',
            style: TextStyles.font13Gray400weight,
          ),
          TextSpan(
            text: ' PrivacyPolicy.',
            style: TextStyles.font13DarkBlue500weight.copyWith(
              height: 1.5
            ),
          )
        ]
      ) 
      );
  }
}