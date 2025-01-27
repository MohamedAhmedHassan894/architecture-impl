import 'package:json_annotation/json_annotation.dart';
part 'interviews_request_body.g.dart';

@JsonSerializable()
class InterviewsRequestBody {
  InterviewsRequestBody({
    this.intervieStatus = 0,
    required this.pageNumber,
    this.pageSize = 20,
  });
  @JsonKey(name: 'status')
  final int intervieStatus;
  @JsonKey(name: 'page')
  final int pageNumber;
  @JsonKey(name: 'size')
  final int pageSize;

  Map<String, dynamic> toJson() => _$InterviewsRequestBodyToJson(this);
}
