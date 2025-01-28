import 'package:json_annotation/json_annotation.dart';
part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody {
  LoginRequestBody({
    required this.email,
    required this.password,
    required this.authtype,
  });
  final String email;
  final String password;
  final int authtype;

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
