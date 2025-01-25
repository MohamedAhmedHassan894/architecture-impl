import 'package:architecture_impl/core/networking/api_error_handler.dart';
import 'package:architecture_impl/features/login/data/models/login_request_body.dart';
import 'package:architecture_impl/features/login/data/models/login_response.dart';

import '../../../../core/networking/api_result.dart';
import '../services/login_api_service.dart';

class LoginRepository {
  final LoginApiService _loginApiService;

  LoginRepository(this._loginApiService);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequest) async {
    try {
      final response = await _loginApiService.login(loginRequest);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
