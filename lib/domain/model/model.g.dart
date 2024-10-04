// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      numOfNotifications: (json['numOfNotifications'] as num).toInt(),
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'numOfNotifications': instance.numOfNotifications,
    };

_$ContactsImpl _$$ContactsImplFromJson(Map<String, dynamic> json) =>
    _$ContactsImpl(
      phone: json['phone'] as String,
      email: json['email'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$ContactsImplToJson(_$ContactsImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
      'link': instance.link,
    };

_$AuthenticationImpl _$$AuthenticationImplFromJson(Map<String, dynamic> json) =>
    _$AuthenticationImpl(
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      contacts: json['contacts'] == null
          ? null
          : Contacts.fromJson(json['contacts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthenticationImplToJson(
        _$AuthenticationImpl instance) =>
    <String, dynamic>{
      'customer': instance.customer?.toJson(),
      'contacts': instance.contacts?.toJson(),
    };

_$DeviceInfoImpl _$$DeviceInfoImplFromJson(Map<String, dynamic> json) =>
    _$DeviceInfoImpl(
      name: json['name'] as String,
      identifier: json['identifier'] as String,
      version: json['version'] as String,
    );

Map<String, dynamic> _$$DeviceInfoImplToJson(_$DeviceInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'identifier': instance.identifier,
      'version': instance.version,
    };
