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
          : CustomerResponse.fromJson(json['customer'] as Map<String, dynamic>),
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

_$ServiceReponseImpl _$$ServiceReponseImplFromJson(Map<String, dynamic> json) =>
    _$ServiceReponseImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ServiceReponseImplToJson(
        _$ServiceReponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

_$StoreReponseImpl _$$StoreReponseImplFromJson(Map<String, dynamic> json) =>
    _$StoreReponseImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$StoreReponseImplToJson(_$StoreReponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

_$BannerReponseImpl _$$BannerReponseImplFromJson(Map<String, dynamic> json) =>
    _$BannerReponseImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      link: json['link'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$BannerReponseImplToJson(_$BannerReponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'link': instance.link,
      'image': instance.image,
    };

_$HomeDataResponseImpl _$$HomeDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeDataResponseImpl(
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => ServiceReponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      stores: (json['stores'] as List<dynamic>?)
          ?.map((e) => StoreReponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => BannerReponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeDataResponseImplToJson(
        _$HomeDataResponseImpl instance) =>
    <String, dynamic>{
      'services': instance.services?.map((e) => e.toJson()).toList(),
      'stores': instance.stores?.map((e) => e.toJson()).toList(),
      'banners': instance.banners?.map((e) => e.toJson()).toList(),
    };

_$HomeResponseImpl _$$HomeResponseImplFromJson(Map<String, dynamic> json) =>
    _$HomeResponseImpl(
      base: json['base'] == null
          ? null
          : BaseResponse.fromJson(json['base'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : HomeDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeResponseImplToJson(_$HomeResponseImpl instance) =>
    <String, dynamic>{
      'base': instance.base?.toJson(),
      'data': instance.data?.toJson(),
    };
