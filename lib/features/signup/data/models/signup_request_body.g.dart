// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequestBody _$SignupRequestBodyFromJson(Map<String, dynamic> json) =>
    SignupRequestBody(
      companyName: json['Name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      termsAndConditionChecked: json['termsAndConditionChecked'] as bool,
      userType: (json['userType'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$SignupRequestBodyToJson(SignupRequestBody instance) =>
    <String, dynamic>{
      'Name': instance.companyName,
      'email': instance.email,
      'password': instance.password,
      'termsAndConditionChecked': instance.termsAndConditionChecked,
      'userType': instance.userType,
    };
