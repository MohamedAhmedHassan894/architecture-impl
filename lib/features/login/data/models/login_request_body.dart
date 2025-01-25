import 'package:json_annotation/json_annotation.dart';
part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody {
  LoginRequestBody({
    required this.email,
    required this.password,
    required this.authtype,
  });
  String email;
  String password;
  int authtype;

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
