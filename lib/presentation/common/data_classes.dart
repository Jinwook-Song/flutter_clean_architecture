import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_classes.freezed.dart';
part 'data_classes.g.dart';

@freezed
class LoginObject with _$LoginObject {
  const factory LoginObject({
    @Default('') String username,
    @Default('') String password,
  }) = _LoginObject;

  factory LoginObject.fromJson(Map<String, dynamic> json) =>
      _$LoginObjectFromJson(json);
}

@freezed
class RegisterObject with _$RegisterObject {
  const factory RegisterObject({
    @Default('') String countryMobileCode,
    @Default('') String name,
    @Default('') String email,
    @Default('') String password,
    @Default('') String mobileNumber,
    @Default('') String avatar,
  }) = _RegisterObject;

  factory RegisterObject.fromJson(Map<String, dynamic> json) =>
      _$RegisterObjectFromJson(json);
}
