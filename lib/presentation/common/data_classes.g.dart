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
