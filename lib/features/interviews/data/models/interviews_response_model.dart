import 'package:json_annotation/json_annotation.dart';
part 'interviews_response_model.g.dart';

@JsonSerializable()
class InterviewsResponseModel {
  InterviewsResponseModel({
    required this.statusCode,
    required this.message,
    required this.interviewsData,
  });

  final int statusCode;
  final String message;
  @JsonKey(name: 'data')
  final Data interviewsData;

  factory InterviewsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$InterviewsResponseModelFromJson(json);
}

@JsonSerializable()
class Data {
  Data({
    required this.keyWord,
    required this.page,
    required this.size,
    required this.interviews,
    required this.count,
    required this.status,
    required this.jobId,
    required this.userId,
  });

  final dynamic keyWord;
  final int page;
  final int size;
  final List<Interview?>? interviews;
  final int count;
  final int status;
  final int? jobId;
  final int? userId;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

}

@JsonSerializable()
class Interview {
  Interview({
    required this.interviewId,
    required this.date,
    required this.fromTime,
    required this.interviewModeId,
    required this.interviewMode,
    required this.location,
    required this.message,
    required this.interviewStatusId,
    required this.interviewStatus,
    required this.draft,
    required this.title,
    required this.seekerId,
    required this.userName,
    required this.companyName,
    required this.avatar,
    required this.hideMyName,
    required this.jobTitleName,
    required this.locationCityName,
    required this.locationCountryName,
    required this.workTypeName,
    required this.hideCompany,
    required this.jobId,
    this.rejectionReason,
    this.toTime,
    required this.isEvaluated,
    required this.isSaved,
    this.rate,
    required this.hasJobOffer,
    this.jobTitleId,
    this.categoryId,
    this.categoryName,
    this.rateDescription,
    required this.organizationId,
    required this.reasonName,
    this.rejectionDescription,
  });

  final int interviewId;
  final DateTime date;
  final DateTime fromTime;
  final DateTime? toTime;
  final int interviewModeId;
  final String interviewMode;
  final String ?location;
  final int interviewStatusId;
  final String interviewStatus;
  final bool draft;
  final dynamic title;
  final int ?seekerId;
  final String userName;
  final String companyName;
  final String avatar;
  final bool hideMyName;
  final bool hideCompany;
  String jobTitleName;
  final int? jobTitleId;
  final String? categoryName;
  final int? categoryId;
  final String locationCityName;
  final String locationCountryName;
  final String workTypeName;
  final int? jobId;
  final String ? rejectionReason;
  final bool isEvaluated;
  bool isSaved;
  final int? rate;
  final String? rateDescription;
  final bool hasJobOffer;
   final String? message;
   final String reasonName;
   final String? rejectionDescription;
   final int organizationId;

  factory Interview.fromJson(Map<String, dynamic> json) =>
      _$InterviewFromJson(json);
}
