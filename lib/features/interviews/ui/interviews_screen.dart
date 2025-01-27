import 'package:architecture_impl/features/interviews/logic/cubit/interviews_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InterviewsScreen extends StatelessWidget {
  const InterviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: BlocBuilder<InterviewsCubit, InterviewsState>(
        builder: (context, state) {
          return Container(
            color: Colors.green,
            child: const Center(child: Text("interviews screen")),
          );
        },
      ),
    ));
  }
}
