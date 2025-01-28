import 'package:json_annotation/json_annotation.dart';
part 'signup_response.g.dart';

@JsonSerializable()
class SignupResponse {
  final int statusCode;
  final String message;

  SignupResponse({
    required this.statusCode,
    required this.message,
  });

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}
