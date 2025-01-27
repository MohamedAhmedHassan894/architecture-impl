import 'package:freezed_annotation/freezed_annotation.dart';

import 'api_error_model.dart';
part 'api_result.freezed.dart';

@freezed
abstract class ApiResult<T> with _$ApiResult {
  const factory ApiResult.success(T data) = Success;
  const factory ApiResult.failure(ApiErrorModel apiErrorModel) = Failure;
}
