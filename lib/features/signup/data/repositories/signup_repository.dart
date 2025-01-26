import 'package:architecture_impl/core/networking/api_result.dart';
import 'package:architecture_impl/features/signup/data/models/signup_response.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../models/signup_request_body.dart';
import '../services/signup_api_service.dart';

class SignupRepository {
  final SignupApiService _signupApiService;

  SignupRepository(this._signupApiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _signupApiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      print("sssss$e");
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
