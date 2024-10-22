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

@freezed
class DeviceInfo with _$DeviceInfo {
  const factory DeviceInfo({
    required String name,
    required String identifier,
    required String version,
  }) = _DeviceInfo;

  factory DeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoFromJson(json);
}

@freezed
class Service with _$Service {
  const factory Service({
    required int id,
    required String title,
    required String image,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}

@freezed
class Store with _$Store {
  const factory Store({
    required int id,
    required String title,
    required String image,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}

@freezed
class Banner with _$Banner {
  const factory Banner({
    required int id,
    required String title,
    required String image,
    required String link,
  }) = _Banner;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}

@freezed
class HomeData with _$HomeData {
  @JsonSerializable(explicitToJson: true)
  const factory HomeData({
    required List<Service> services,
    required List<Store> stores,
    required List<Banner> banners,
  }) = _HomeData;

  factory HomeData.fromJson(Map<String, dynamic> json) =>
      _$HomeDataFromJson(json);
}

class HomeObject {
  final HomeData data;

  HomeObject(this.data);
}
