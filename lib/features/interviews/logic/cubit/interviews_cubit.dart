import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../data/models/interviews_request_body.dart';
import '../../data/repo/interviews_repository.dart';
import '../../data/models/interviews_response_model.dart';
part 'interviews_state.dart';
part 'interviews_cubit.freezed.dart';

class InterviewsCubit extends Cubit<InterviewsState> {
  InterviewsCubit(this._interviewsRepository)
      : super(const InterviewsState.initial());

  final InterviewsRepository _interviewsRepository;

  Future<void> getRecruiterInterviews() async {
    emit(const InterviewsState.loading());
    final response = await _interviewsRepository.getRecruiterInterviews(
        InterviewsRequestBody(pageNumber: 1, intervieStatus: 0));
    response.when(
      success: (interviewsResponseModel) {
        emit(InterviewsState.success(interviewsResponseModel));
      },
      failure: (apiErrorModel) {
        emit(InterviewsState.error(apiErrorModel));
      },
    );
  }
}
