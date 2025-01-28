part of 'interviews_cubit.dart';

@freezed
class InterviewsState with _$InterviewsState {
  const factory InterviewsState.initial() = _Initial;
  const factory InterviewsState.loading() = Loading;
  const factory InterviewsState.success(List<Interview?> interviewsList) = Success;
  const factory InterviewsState.error(ApiErrorModel apiErrorModel) = Error;
}
