import 'package:architecture_impl/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: TextStyles.font14GrayRegular,
        ),
        TextButton(
          onPressed: () {
            context.pushReplacementNamed(Routes.loginScreen);
          },
          child: Text(
            'Sign In',
            style: TextStyles.font14BlueSemiBold,
          ),
        ),
      ],
    );
  }
}
