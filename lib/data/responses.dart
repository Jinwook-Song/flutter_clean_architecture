import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart'; // Code generation을 위한 파일

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: 'status')
  final int status; // 필수로 변경 (nullable 필요시 원래대로)

  @JsonKey(name: 'message')
  final String message; // 필수로 변경

  BaseResponse({
    required this.status,
    required this.message,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}

@JsonSerializable()
class CustomerResponse {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'numOfNotifications')
  final int numOfNotifications;

  CustomerResponse({
    required this.id,
    required this.name,
    required this.numOfNotifications,
  });

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerResponseToJson(this);
}

@JsonSerializable()
class ContactsResponse {
  @JsonKey(name: 'phone')
  final String phone;

  @JsonKey(name: 'link')
  final String link;

  @JsonKey(name: 'email')
  final String email;

  ContactsResponse({
    required this.phone,
    required this.link,
    required this.email,
  });

  factory ContactsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ContactsResponseToJson(this);
}

@JsonSerializable()
class AuthResponse extends BaseResponse {
  @JsonKey(name: 'customer')
  final ContactsResponse? customer;

  @JsonKey(name: 'link')
  final String link;

  @JsonKey(name: 'contacts')
  final ContactsResponse? contacts;

  AuthResponse({
    required super.status,
    required super.message,
    this.customer,
    required this.link,
    this.contacts,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}
