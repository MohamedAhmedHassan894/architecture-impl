import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/colors.dart';
import 'widgets/interviews_list_view.dart';
import '../../../core/networking/api_error_model.dart';
import '../logic/cubit/interviews_cubit.dart';

class InterviewsScreen extends StatelessWidget {
  const InterviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<InterviewsCubit, InterviewsState>(
          builder: (context, state) {
            return state.maybeWhen(
              success: (interviewsList) {
                return setupSuccess(interviewsList);
              },
              error: (apiErrorModel) => setupError(apiErrorModel),
              loading: () => const Center(
                  child: CircularProgressIndicator(
                color: ColorsManager.mainGreen,
              )),
              orElse: () {
                return const SizedBox.shrink();
              },
            );
          },
        ),
      ),
    );
  }

  Widget setupSuccess(interviewsList) {
    return InterviewsListView(
      interviewsList: interviewsList,
    );
  }

  Widget setupError(ApiErrorModel apiErrorMode) {
    return Center(child: Text('Error : ${apiErrorMode.message}'));
  }
}
