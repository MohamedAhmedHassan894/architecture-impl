import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/styles.dart';
import 'widgets/already_have_account.dart';
import 'widgets/signup_button.dart';
import 'widgets/signup_form_fields.dart';

// ignore: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign up as recuiter',
                    style: TextStyles.font24BlueBold,
                  ),
                  verticalSpace(36),
                  const SignupFormFields(),
                  verticalSpace(40),
                  const SignupButton(),
                  verticalSpace(50),
                  const AlreadyHaveAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
