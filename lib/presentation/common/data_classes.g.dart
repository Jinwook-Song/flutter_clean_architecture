// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginObjectImpl _$$LoginObjectImplFromJson(Map<String, dynamic> json) =>
    _$LoginObjectImpl(
      username: json['username'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$LoginObjectImplToJson(_$LoginObjectImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$RegisterObjectImpl _$$RegisterObjectImplFromJson(Map<String, dynamic> json) =>
    _$RegisterObjectImpl(
      countryMobileCode: json['countryMobileCode'] as String? ?? '',
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
      mobileNumber: json['mobileNumber'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
    );

Map<String, dynamic> _$$RegisterObjectImplToJson(
        _$RegisterObjectImpl instance) =>
    <String, dynamic>{
      'countryMobileCode': instance.countryMobileCode,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'mobileNumber': instance.mobileNumber,
      'avatar': instance.avatar,
    };
