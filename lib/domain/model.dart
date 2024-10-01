// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

class SliderObject {
  final String title;
  final String subtitle;
  final String image;

  SliderObject({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

@freezed
class Customer with _$Customer {
  const factory Customer({
    required String id,
    required String name,
    required int numOfNotifications,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}

@freezed
class Contacts with _$Contacts {
  const factory Contacts({
    required String phone,
    required String email,
    required String link,
  }) = _Contacts;

  factory Contacts.fromJson(Map<String, dynamic> json) =>
      _$ContactsFromJson(json);
}

@freezed
class Authentication with _$Authentication {
  @JsonSerializable(explicitToJson: true)
  const factory Authentication({
    Customer? customer,
    Contacts? contacts,
  }) = _Authentication;

  factory Authentication.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationFromJson(json);
}
