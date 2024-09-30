// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'responses.freezed.dart';
part 'responses.g.dart';

@freezed
class BaseResponse with _$BaseResponse {
  const factory BaseResponse({
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'message') required String message,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
}

@freezed
class CustomerResponse with _$CustomerResponse {
  const factory CustomerResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'numOfNotifications') required int numOfNotifications,
  }) = _CustomerResponse;

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);
}

@freezed
class ContactsResponse with _$ContactsResponse {
  const factory ContactsResponse({
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'link') required String link,
    @JsonKey(name: 'email') required String email,
  }) = _ContactsResponse;

  factory ContactsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactsResponseFromJson(json);
}

@freezed
class AuthResponse with _$AuthResponse {
  @JsonSerializable(explicitToJson: true)
  const factory AuthResponse({
    @JsonKey(name: 'base') required BaseResponse base,
    @JsonKey(name: 'customer') ContactsResponse? customer,
    @JsonKey(name: 'link') required String link,
    @JsonKey(name: 'contacts') ContactsResponse? contacts,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
