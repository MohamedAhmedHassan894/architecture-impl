// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interviews_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InterviewsResponseModel _$InterviewsResponseModelFromJson(
        Map<String, dynamic> json) =>
    InterviewsResponseModel(
      statusCode: (json['statusCode'] as num).toInt(),
      message: json['message'] as String,
      interviewsData: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InterviewsResponseModelToJson(
        InterviewsResponseModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.interviewsData,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      keyWord: json['keyWord'],
      page: (json['page'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      interviews: (json['interviews'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Interview.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      jobId: (json['jobId'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'keyWord': instance.keyWord,
      'page': instance.page,
      'size': instance.size,
      'interviews': instance.interviews,
      'count': instance.count,
      'status': instance.status,
      'jobId': instance.jobId,
      'userId': instance.userId,
    };

Interview _$InterviewFromJson(Map<String, dynamic> json) => Interview(
      interviewId: (json['interviewId'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      fromTime: DateTime.parse(json['fromTime'] as String),
      interviewModeId: (json['interviewModeId'] as num).toInt(),
      interviewMode: json['interviewMode'] as String,
      location: json['location'] as String?,
      message: json['message'] as String?,
      interviewStatusId: (json['interviewStatusId'] as num).toInt(),
      interviewStatus: json['interviewStatus'] as String,
      draft: json['draft'] as bool,
      title: json['title'],
      seekerId: (json['seekerId'] as num?)?.toInt(),
      userName: json['userName'] as String,
      companyName: json['companyName'] as String,
      avatar: json['avatar'] as String,
      hideMyName: json['hideMyName'] as bool,
      jobTitleName: json['jobTitleName'] as String,
      locationCityName: json['locationCityName'] as String,
      locationCountryName: json['locationCountryName'] as String,
      workTypeName: json['workTypeName'] as String,
      hideCompany: json['hideCompany'] as bool,
      jobId: (json['jobId'] as num?)?.toInt(),
      rejectionReason: json['rejectionReason'] as String?,
      toTime: json['toTime'] == null
          ? null
          : DateTime.parse(json['toTime'] as String),
      isEvaluated: json['isEvaluated'] as bool,
      isSaved: json['isSaved'] as bool,
      rate: (json['rate'] as num?)?.toInt(),
      hasJobOffer: json['hasJobOffer'] as bool,
      jobTitleId: (json['jobTitleId'] as num?)?.toInt(),
      categoryId: (json['categoryId'] as num?)?.toInt(),
      categoryName: json['categoryName'] as String?,
      rateDescription: json['rateDescription'] as String?,
      organizationId: (json['organizationId'] as num).toInt(),
      reasonName: json['reasonName'] as String,
      rejectionDescription: json['rejectionDescription'] as String?,
    );

Map<String, dynamic> _$InterviewToJson(Interview instance) => <String, dynamic>{
      'interviewId': instance.interviewId,
      'date': instance.date.toIso8601String(),
      'fromTime': instance.fromTime.toIso8601String(),
      'toTime': instance.toTime?.toIso8601String(),
      'interviewModeId': instance.interviewModeId,
      'interviewMode': instance.interviewMode,
      'location': instance.location,
      'interviewStatusId': instance.interviewStatusId,
      'interviewStatus': instance.interviewStatus,
      'draft': instance.draft,
      'title': instance.title,
      'seekerId': instance.seekerId,
      'userName': instance.userName,
      'companyName': instance.companyName,
      'avatar': instance.avatar,
      'hideMyName': instance.hideMyName,
      'hideCompany': instance.hideCompany,
      'jobTitleName': instance.jobTitleName,
      'jobTitleId': instance.jobTitleId,
      'categoryName': instance.categoryName,
      'categoryId': instance.categoryId,
      'locationCityName': instance.locationCityName,
      'locationCountryName': instance.locationCountryName,
      'workTypeName': instance.workTypeName,
      'jobId': instance.jobId,
      'rejectionReason': instance.rejectionReason,
      'isEvaluated': instance.isEvaluated,
      'isSaved': instance.isSaved,
      'rate': instance.rate,
      'rateDescription': instance.rateDescription,
      'hasJobOffer': instance.hasJobOffer,
      'message': instance.message,
      'reasonName': instance.reasonName,
      'rejectionDescription': instance.rejectionDescription,
      'organizationId': instance.organizationId,
    };
