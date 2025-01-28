import '../../../../core/networking/api_result.dart';
import '../models/interviews_request_body.dart';
import '../services/interviews_api_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../models/interviews_response_model.dart';

class InterviewsRepository {
  final InterviewsApiService _interviewsApiService;

  InterviewsRepository(this._interviewsApiService);

  Future<ApiResult<InterviewsResponseModel>> getRecruiterInterviews(
      InterviewsRequestBody interviewsRequestBody) async {
    try {
      final response = await _interviewsApiService
          .getRecruiterInterviews(interviewsRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
