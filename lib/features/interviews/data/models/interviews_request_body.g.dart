// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interviews_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InterviewsRequestBody _$InterviewsRequestBodyFromJson(
        Map<String, dynamic> json) =>
    InterviewsRequestBody(
      intervieStatus: (json['status'] as num?)?.toInt() ?? 0,
      pageNumber: (json['page'] as num).toInt(),
      pageSize: (json['size'] as num?)?.toInt() ?? 20,
    );

Map<String, dynamic> _$InterviewsRequestBodyToJson(
        InterviewsRequestBody instance) =>
    <String, dynamic>{
      'status': instance.intervieStatus,
      'page': instance.pageNumber,
      'size': instance.pageSize,
    };
