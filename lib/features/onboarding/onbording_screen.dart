import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theming/styles.dart';
import 'package:flutter_advanced/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:flutter_advanced/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_advanced/features/onboarding/widgets/doc_logo_and_name.dart';
class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
        SingleChildScrollView(
          child: Padding(
            padding:EdgeInsets.symmetric(vertical: 20.h),
            child:Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 5.h,),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text('Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      textAlign: TextAlign.center,
                        style: TextStyles.font13Gray400weight,
                      ),
                      SizedBox(height: 10.h,),
                      const GetStartedButton(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
