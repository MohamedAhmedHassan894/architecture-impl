import 'package:architecture_impl/core/networking/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/signup_response.dart';
import '../models/signup_request_body.dart';

part 'signup_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class SignupApiService {
  factory SignupApiService(Dio dio, {String baseUrl}) = _SignupApiService;

  @POST(ApiConstants.signUp)
  Future<SignupResponse> signup(@Body() SignupRequestBody signupRequestBody);
}
