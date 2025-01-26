import 'package:json_annotation/json_annotation.dart';
part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  SignupRequestBody({
    required this.companyName,
    required this.email,
    required this.password,
    required this.termsAndConditionChecked,
    this.userType = 2,
  });
  @JsonKey(name: 'Name') 
  final String companyName;
  final String email;
  final String password;
  final bool termsAndConditionChecked;
  final int userType;

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
