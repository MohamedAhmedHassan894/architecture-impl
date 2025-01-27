import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../data/models/signup_response.dart';
import '../../data/models/signup_request_body.dart';
import '../../data/repositories/signup_repository.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._signupRepository) : super(const SignupState.initial());

  final SignupRepository _signupRepository;
  final TextEditingController comanyNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  emitSignupStates() async {
    emit(const SignupState.loading());
    final response = await _signupRepository.signup(SignupRequestBody(
      companyName: comanyNameController.text,
      email: emailController.text,
      password: passwordController.text,
      termsAndConditionChecked: true,
    ));
    response.when(
      success: (signupResponse) {
        emit(SignupState.success(signupResponse));
      },
      failure: (apiErrorModel) {
        emit(SignupState.error(apiErrorModel));
      },
    );
  }
}
