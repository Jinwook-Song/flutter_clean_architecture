// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseImpl _$$BaseResponseImplFromJson(Map<String, dynamic> json) =>
    _$BaseResponseImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$BaseResponseImplToJson(_$BaseResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$CustomerResponseImpl _$$CustomerResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerResponseImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      numOfNotifications: (json['numOfNotifications'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CustomerResponseImplToJson(
        _$CustomerResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'numOfNotifications': instance.numOfNotifications,
    };

_$ContactsResponseImpl _$$ContactsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactsResponseImpl(
      phone: json['phone'] as String?,
      link: json['link'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$ContactsResponseImplToJson(
        _$ContactsResponseImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'link': instance.link,
      'email': instance.email,
    };

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      base: json['base'] == null
          ? null
          : BaseResponse.fromJson(json['base'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : ContactsResponse.fromJson(json['customer'] as Map<String, dynamic>),
      link: json['link'] as String?,
      contacts: json['contacts'] == null
          ? null
          : ContactsResponse.fromJson(json['contacts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'base': instance.base?.toJson(),
      'customer': instance.customer?.toJson(),
      'link': instance.link,
      'contacts': instance.contacts?.toJson(),
    };
