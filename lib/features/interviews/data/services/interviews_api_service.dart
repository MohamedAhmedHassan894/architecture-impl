import '../../../../core/networking/api_constants.dart';
import '../models/interviews_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/interviews_request_body.dart';
part 'interviews_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class InterviewsApiService {
  factory InterviewsApiService(Dio dio) = _InterviewsApiService;

  @POST(ApiConstants.getRecruiterInterviews)
  Future<InterviewsResponseModel> getRecruiterInterviews(@Body() InterviewsRequestBody interviewsRequestBody);
}
