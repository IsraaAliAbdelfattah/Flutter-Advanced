import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/spacing.dart';
import 'package:flutter_advanced/core/theming/styles.dart';
import 'package:flutter_advanced/core/widgets/app_text_button.dart';
import 'package:flutter_advanced/core/widgets/app_text_form_field.dart';
import 'package:flutter_advanced/features/login/ui/widgets/already_have_account_text.dart';
import 'package:flutter_advanced/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  bool isObscureText=true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: SafeArea(
       child: Padding(
           padding:EdgeInsets.symmetric(horizontal: 30.w,vertical: 30.h),
         child: SingleChildScrollView(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              verticalSpace(20),
           Text('Welcome Back',
           style: TextStyles.font24Blue700weight,
           ),
               verticalSpace(8),
               Text('We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                 style: TextStyles.font14Gray400weight,
               ),
               verticalSpace(36),
               Form(
                   key: formkey,
                   child: Column(
                     children: [
                        const AppTextFormField(hintText: 'Email'),
                        verticalSpace(18),
                         AppTextFormField(
                          hintText: 'Password',
                          isObscureText: isObscureText,
                          suffixIcon: IconButton(onPressed: (){
                            isObscureText=! isObscureText;
                            setState(() {
                              
                            });
                          }, icon: Icon(isObscureText?Icons.visibility_off:Icons.visibility) ,
                          ),
                          ),
                          verticalSpace(24),
                          Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child:  Text('Forgot Password?',
                          style: TextStyles.font13Blue400weight,
                          ),),
                          verticalSpace(40),
                          AppTextButton(
                            buttonText: 'Login',
                           textStyle: TextStyles.font16White600weight,
                            onPressed:(){}),
                            verticalSpace(16),
                            const TermsAndConditions(),
                            verticalSpace(60),
                            const AlreadyHaveAccountText(),
                     ],
                   ),
               ),
             ],
           ),
         ),
       ),
     ),
    );
  }
}
