import 'package:architecture_impl/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../logic/cubit/signup_cubit.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listenWhen: (previous, current) => current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          success: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Signed up successfully!'),
                backgroundColor: ColorsManager.mainGreen,
              ),
            );
          },
          error: (apiErrorModel) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text(
                'Error signing up! ${apiErrorModel.message}',
              )),
            );
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const Center(
                child: CircularProgressIndicator(
              color: ColorsManager.mainGreen,
            ));
          },
          orElse: () {
            return AppTextButton(
              buttonText: "SignUp",
              textStyle: TextStyles.font16WhiteSemiBold,
              onPressed: () {
                validateThenSignup(context);
              },
            );
          },
        );
      },
    );
  }

  void validateThenSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
