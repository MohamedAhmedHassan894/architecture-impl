import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/login_request_body.dart';
import '../../data/repositories/login_repository.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepository) : super(const LoginState.initial());

  final LoginRepository _loginRepository;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepository.login(LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
      authtype: 2,
    ));
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(
            message: error.apiErrorModel.message ?? "Something error happen!"));
      },
    );
  }
}
