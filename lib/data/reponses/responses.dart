// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'responses.freezed.dart';
part 'responses.g.dart';

@freezed
class BaseResponse with _$BaseResponse {
  const factory BaseResponse({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
}

@freezed
class CustomerResponse with _$CustomerResponse {
  const factory CustomerResponse({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'numOfNotifications') int? numOfNotifications,
  }) = _CustomerResponse;

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);
}

@freezed
class ContactsResponse with _$ContactsResponse {
  const factory ContactsResponse({
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'email') String? email,
  }) = _ContactsResponse;

  factory ContactsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactsResponseFromJson(json);
}

@freezed
class AuthResponse with _$AuthResponse {
  @JsonSerializable(explicitToJson: true)
  const factory AuthResponse({
    @JsonKey(name: 'base') BaseResponse? base,
    @JsonKey(name: 'customer') CustomerResponse? customer,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'contacts') ContactsResponse? contacts,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@freezed
class ServiceReponse with _$ServiceReponse {
  const factory ServiceReponse({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'image') String? image,
  }) = _ServiceReponse;

  factory ServiceReponse.fromJson(Map<String, dynamic> json) =>
      _$ServiceReponseFromJson(json);
}

@freezed
class StoreReponse with _$StoreReponse {
  const factory StoreReponse({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'image') String? image,
  }) = _StoreReponse;

  factory StoreReponse.fromJson(Map<String, dynamic> json) =>
      _$StoreReponseFromJson(json);
}

@freezed
class BannerReponse with _$BannerReponse {
  const factory BannerReponse({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'image') String? image,
  }) = _BannerReponse;

  factory BannerReponse.fromJson(Map<String, dynamic> json) =>
      _$BannerReponseFromJson(json);
}

@freezed
class HomeResponse with _$HomeResponse {
  @JsonSerializable(explicitToJson: true)
  const factory HomeResponse({
    @JsonKey(name: 'base') BaseResponse? base,
    @JsonKey(name: 'services') List<ServiceReponse>? service,
    @JsonKey(name: 'stores') List<StoreReponse>? stores,
    @JsonKey(name: 'banners') List<BannerReponse>? banners,
  }) = _HomeResponse;

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}
