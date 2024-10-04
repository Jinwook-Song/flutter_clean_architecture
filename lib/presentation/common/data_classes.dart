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
