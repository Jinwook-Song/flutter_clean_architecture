// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) {
  return _BaseResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponse {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this BaseResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseCopyWith<BaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseCopyWith<$Res> {
  factory $BaseResponseCopyWith(
          BaseResponse value, $Res Function(BaseResponse) then) =
      _$BaseResponseCopyWithImpl<$Res, BaseResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$BaseResponseCopyWithImpl<$Res, $Val extends BaseResponse>
    implements $BaseResponseCopyWith<$Res> {
  _$BaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseImplCopyWith<$Res>
    implements $BaseResponseCopyWith<$Res> {
  factory _$$BaseResponseImplCopyWith(
          _$BaseResponseImpl value, $Res Function(_$BaseResponseImpl) then) =
      __$$BaseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$BaseResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseCopyWithImpl<$Res, _$BaseResponseImpl>
    implements _$$BaseResponseImplCopyWith<$Res> {
  __$$BaseResponseImplCopyWithImpl(
      _$BaseResponseImpl _value, $Res Function(_$BaseResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$BaseResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseImpl implements _BaseResponse {
  const _$BaseResponseImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message});

  factory _$BaseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'BaseResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseImplCopyWith<_$BaseResponseImpl> get copyWith =>
      __$$BaseResponseImplCopyWithImpl<_$BaseResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponse implements BaseResponse {
  const factory _BaseResponse(
      {@JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'message') final String? message}) = _$BaseResponseImpl;

  factory _BaseResponse.fromJson(Map<String, dynamic> json) =
      _$BaseResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseImplCopyWith<_$BaseResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerResponse _$CustomerResponseFromJson(Map<String, dynamic> json) {
  return _CustomerResponse.fromJson(json);
}

/// @nodoc
mixin _$CustomerResponse {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'numOfNotifications')
  int? get numOfNotifications => throw _privateConstructorUsedError;

  /// Serializes this CustomerResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerResponseCopyWith<CustomerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerResponseCopyWith<$Res> {
  factory $CustomerResponseCopyWith(
          CustomerResponse value, $Res Function(CustomerResponse) then) =
      _$CustomerResponseCopyWithImpl<$Res, CustomerResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'numOfNotifications') int? numOfNotifications});
}

/// @nodoc
class _$CustomerResponseCopyWithImpl<$Res, $Val extends CustomerResponse>
    implements $CustomerResponseCopyWith<$Res> {
  _$CustomerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? numOfNotifications = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      numOfNotifications: freezed == numOfNotifications
          ? _value.numOfNotifications
          : numOfNotifications // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerResponseImplCopyWith<$Res>
    implements $CustomerResponseCopyWith<$Res> {
  factory _$$CustomerResponseImplCopyWith(_$CustomerResponseImpl value,
          $Res Function(_$CustomerResponseImpl) then) =
      __$$CustomerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'numOfNotifications') int? numOfNotifications});
}

/// @nodoc
class __$$CustomerResponseImplCopyWithImpl<$Res>
    extends _$CustomerResponseCopyWithImpl<$Res, _$CustomerResponseImpl>
    implements _$$CustomerResponseImplCopyWith<$Res> {
  __$$CustomerResponseImplCopyWithImpl(_$CustomerResponseImpl _value,
      $Res Function(_$CustomerResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? numOfNotifications = freezed,
  }) {
    return _then(_$CustomerResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      numOfNotifications: freezed == numOfNotifications
          ? _value.numOfNotifications
          : numOfNotifications // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerResponseImpl implements _CustomerResponse {
  const _$CustomerResponseImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'numOfNotifications') this.numOfNotifications});

  factory _$CustomerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'numOfNotifications')
  final int? numOfNotifications;

  @override
  String toString() {
    return 'CustomerResponse(id: $id, name: $name, numOfNotifications: $numOfNotifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numOfNotifications, numOfNotifications) ||
                other.numOfNotifications == numOfNotifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, numOfNotifications);

  /// Create a copy of CustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerResponseImplCopyWith<_$CustomerResponseImpl> get copyWith =>
      __$$CustomerResponseImplCopyWithImpl<_$CustomerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerResponseImplToJson(
      this,
    );
  }
}

abstract class _CustomerResponse implements CustomerResponse {
  const factory _CustomerResponse(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'numOfNotifications') final int? numOfNotifications}) =
      _$CustomerResponseImpl;

  factory _CustomerResponse.fromJson(Map<String, dynamic> json) =
      _$CustomerResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'numOfNotifications')
  int? get numOfNotifications;

  /// Create a copy of CustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerResponseImplCopyWith<_$CustomerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactsResponse _$ContactsResponseFromJson(Map<String, dynamic> json) {
  return _ContactsResponse.fromJson(json);
}

/// @nodoc
mixin _$ContactsResponse {
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this ContactsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactsResponseCopyWith<ContactsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsResponseCopyWith<$Res> {
  factory $ContactsResponseCopyWith(
          ContactsResponse value, $Res Function(ContactsResponse) then) =
      _$ContactsResponseCopyWithImpl<$Res, ContactsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class _$ContactsResponseCopyWithImpl<$Res, $Val extends ContactsResponse>
    implements $ContactsResponseCopyWith<$Res> {
  _$ContactsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? link = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactsResponseImplCopyWith<$Res>
    implements $ContactsResponseCopyWith<$Res> {
  factory _$$ContactsResponseImplCopyWith(_$ContactsResponseImpl value,
          $Res Function(_$ContactsResponseImpl) then) =
      __$$ContactsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class __$$ContactsResponseImplCopyWithImpl<$Res>
    extends _$ContactsResponseCopyWithImpl<$Res, _$ContactsResponseImpl>
    implements _$$ContactsResponseImplCopyWith<$Res> {
  __$$ContactsResponseImplCopyWithImpl(_$ContactsResponseImpl _value,
      $Res Function(_$ContactsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? link = freezed,
    Object? email = freezed,
  }) {
    return _then(_$ContactsResponseImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactsResponseImpl implements _ContactsResponse {
  const _$ContactsResponseImpl(
      {@JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'link') this.link,
      @JsonKey(name: 'email') this.email});

  factory _$ContactsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'link')
  final String? link;
  @override
  @JsonKey(name: 'email')
  final String? email;

  @override
  String toString() {
    return 'ContactsResponse(phone: $phone, link: $link, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactsResponseImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, link, email);

  /// Create a copy of ContactsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactsResponseImplCopyWith<_$ContactsResponseImpl> get copyWith =>
      __$$ContactsResponseImplCopyWithImpl<_$ContactsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactsResponseImplToJson(
      this,
    );
  }
}

abstract class _ContactsResponse implements ContactsResponse {
  const factory _ContactsResponse(
      {@JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'link') final String? link,
      @JsonKey(name: 'email') final String? email}) = _$ContactsResponseImpl;

  factory _ContactsResponse.fromJson(Map<String, dynamic> json) =
      _$ContactsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'link')
  String? get link;
  @override
  @JsonKey(name: 'email')
  String? get email;

  /// Create a copy of ContactsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactsResponseImplCopyWith<_$ContactsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthResponse {
  @JsonKey(name: 'base')
  BaseResponse? get base => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer')
  CustomerResponse? get customer => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'contacts')
  ContactsResponse? get contacts => throw _privateConstructorUsedError;

  /// Serializes this AuthResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponseCopyWithImpl<$Res, AuthResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'base') BaseResponse? base,
      @JsonKey(name: 'customer') CustomerResponse? customer,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'contacts') ContactsResponse? contacts});

  $BaseResponseCopyWith<$Res>? get base;
  $CustomerResponseCopyWith<$Res>? get customer;
  $ContactsResponseCopyWith<$Res>? get contacts;
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res, $Val extends AuthResponse>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = freezed,
    Object? customer = freezed,
    Object? link = freezed,
    Object? contacts = freezed,
  }) {
    return _then(_value.copyWith(
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as BaseResponse?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerResponse?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      contacts: freezed == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as ContactsResponse?,
    ) as $Val);
  }

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseResponseCopyWith<$Res>? get base {
    if (_value.base == null) {
      return null;
    }

    return $BaseResponseCopyWith<$Res>(_value.base!, (value) {
      return _then(_value.copyWith(base: value) as $Val);
    });
  }

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerResponseCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerResponseCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactsResponseCopyWith<$Res>? get contacts {
    if (_value.contacts == null) {
      return null;
    }

    return $ContactsResponseCopyWith<$Res>(_value.contacts!, (value) {
      return _then(_value.copyWith(contacts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthResponseImplCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$$AuthResponseImplCopyWith(
          _$AuthResponseImpl value, $Res Function(_$AuthResponseImpl) then) =
      __$$AuthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'base') BaseResponse? base,
      @JsonKey(name: 'customer') CustomerResponse? customer,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'contacts') ContactsResponse? contacts});

  @override
  $BaseResponseCopyWith<$Res>? get base;
  @override
  $CustomerResponseCopyWith<$Res>? get customer;
  @override
  $ContactsResponseCopyWith<$Res>? get contacts;
}

/// @nodoc
class __$$AuthResponseImplCopyWithImpl<$Res>
    extends _$AuthResponseCopyWithImpl<$Res, _$AuthResponseImpl>
    implements _$$AuthResponseImplCopyWith<$Res> {
  __$$AuthResponseImplCopyWithImpl(
      _$AuthResponseImpl _value, $Res Function(_$AuthResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = freezed,
    Object? customer = freezed,
    Object? link = freezed,
    Object? contacts = freezed,
  }) {
    return _then(_$AuthResponseImpl(
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as BaseResponse?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerResponse?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      contacts: freezed == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as ContactsResponse?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AuthResponseImpl implements _AuthResponse {
  const _$AuthResponseImpl(
      {@JsonKey(name: 'base') this.base,
      @JsonKey(name: 'customer') this.customer,
      @JsonKey(name: 'link') this.link,
      @JsonKey(name: 'contacts') this.contacts});

  factory _$AuthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResponseImplFromJson(json);

  @override
  @JsonKey(name: 'base')
  final BaseResponse? base;
  @override
  @JsonKey(name: 'customer')
  final CustomerResponse? customer;
  @override
  @JsonKey(name: 'link')
  final String? link;
  @override
  @JsonKey(name: 'contacts')
  final ContactsResponse? contacts;

  @override
  String toString() {
    return 'AuthResponse(base: $base, customer: $customer, link: $link, contacts: $contacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.contacts, contacts) ||
                other.contacts == contacts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, base, customer, link, contacts);

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      __$$AuthResponseImplCopyWithImpl<_$AuthResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthResponse implements AuthResponse {
  const factory _AuthResponse(
          {@JsonKey(name: 'base') final BaseResponse? base,
          @JsonKey(name: 'customer') final CustomerResponse? customer,
          @JsonKey(name: 'link') final String? link,
          @JsonKey(name: 'contacts') final ContactsResponse? contacts}) =
      _$AuthResponseImpl;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$AuthResponseImpl.fromJson;

  @override
  @JsonKey(name: 'base')
  BaseResponse? get base;
  @override
  @JsonKey(name: 'customer')
  CustomerResponse? get customer;
  @override
  @JsonKey(name: 'link')
  String? get link;
  @override
  @JsonKey(name: 'contacts')
  ContactsResponse? get contacts;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceReponse _$ServiceReponseFromJson(Map<String, dynamic> json) {
  return _ServiceReponse.fromJson(json);
}

/// @nodoc
mixin _$ServiceReponse {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this ServiceReponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceReponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceReponseCopyWith<ServiceReponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceReponseCopyWith<$Res> {
  factory $ServiceReponseCopyWith(
          ServiceReponse value, $Res Function(ServiceReponse) then) =
      _$ServiceReponseCopyWithImpl<$Res, ServiceReponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$ServiceReponseCopyWithImpl<$Res, $Val extends ServiceReponse>
    implements $ServiceReponseCopyWith<$Res> {
  _$ServiceReponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceReponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceReponseImplCopyWith<$Res>
    implements $ServiceReponseCopyWith<$Res> {
  factory _$$ServiceReponseImplCopyWith(_$ServiceReponseImpl value,
          $Res Function(_$ServiceReponseImpl) then) =
      __$$ServiceReponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$ServiceReponseImplCopyWithImpl<$Res>
    extends _$ServiceReponseCopyWithImpl<$Res, _$ServiceReponseImpl>
    implements _$$ServiceReponseImplCopyWith<$Res> {
  __$$ServiceReponseImplCopyWithImpl(
      _$ServiceReponseImpl _value, $Res Function(_$ServiceReponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceReponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ServiceReponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceReponseImpl implements _ServiceReponse {
  const _$ServiceReponseImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'image') this.image});

  factory _$ServiceReponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceReponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString() {
    return 'ServiceReponse(id: $id, title: $title, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceReponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image);

  /// Create a copy of ServiceReponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceReponseImplCopyWith<_$ServiceReponseImpl> get copyWith =>
      __$$ServiceReponseImplCopyWithImpl<_$ServiceReponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceReponseImplToJson(
      this,
    );
  }
}

abstract class _ServiceReponse implements ServiceReponse {
  const factory _ServiceReponse(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'image') final String? image}) = _$ServiceReponseImpl;

  factory _ServiceReponse.fromJson(Map<String, dynamic> json) =
      _$ServiceReponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'image')
  String? get image;

  /// Create a copy of ServiceReponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceReponseImplCopyWith<_$ServiceReponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreReponse _$StoreReponseFromJson(Map<String, dynamic> json) {
  return _StoreReponse.fromJson(json);
}

/// @nodoc
mixin _$StoreReponse {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this StoreReponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreReponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreReponseCopyWith<StoreReponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreReponseCopyWith<$Res> {
  factory $StoreReponseCopyWith(
          StoreReponse value, $Res Function(StoreReponse) then) =
      _$StoreReponseCopyWithImpl<$Res, StoreReponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$StoreReponseCopyWithImpl<$Res, $Val extends StoreReponse>
    implements $StoreReponseCopyWith<$Res> {
  _$StoreReponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreReponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreReponseImplCopyWith<$Res>
    implements $StoreReponseCopyWith<$Res> {
  factory _$$StoreReponseImplCopyWith(
          _$StoreReponseImpl value, $Res Function(_$StoreReponseImpl) then) =
      __$$StoreReponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$StoreReponseImplCopyWithImpl<$Res>
    extends _$StoreReponseCopyWithImpl<$Res, _$StoreReponseImpl>
    implements _$$StoreReponseImplCopyWith<$Res> {
  __$$StoreReponseImplCopyWithImpl(
      _$StoreReponseImpl _value, $Res Function(_$StoreReponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreReponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
  }) {
    return _then(_$StoreReponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreReponseImpl implements _StoreReponse {
  const _$StoreReponseImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'image') this.image});

  factory _$StoreReponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreReponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString() {
    return 'StoreReponse(id: $id, title: $title, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreReponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image);

  /// Create a copy of StoreReponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreReponseImplCopyWith<_$StoreReponseImpl> get copyWith =>
      __$$StoreReponseImplCopyWithImpl<_$StoreReponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreReponseImplToJson(
      this,
    );
  }
}

abstract class _StoreReponse implements StoreReponse {
  const factory _StoreReponse(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'image') final String? image}) = _$StoreReponseImpl;

  factory _StoreReponse.fromJson(Map<String, dynamic> json) =
      _$StoreReponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'image')
  String? get image;

  /// Create a copy of StoreReponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreReponseImplCopyWith<_$StoreReponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerReponse _$BannerReponseFromJson(Map<String, dynamic> json) {
  return _BannerReponse.fromJson(json);
}

/// @nodoc
mixin _$BannerReponse {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this BannerReponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerReponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerReponseCopyWith<BannerReponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerReponseCopyWith<$Res> {
  factory $BannerReponseCopyWith(
          BannerReponse value, $Res Function(BannerReponse) then) =
      _$BannerReponseCopyWithImpl<$Res, BannerReponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$BannerReponseCopyWithImpl<$Res, $Val extends BannerReponse>
    implements $BannerReponseCopyWith<$Res> {
  _$BannerReponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerReponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerReponseImplCopyWith<$Res>
    implements $BannerReponseCopyWith<$Res> {
  factory _$$BannerReponseImplCopyWith(
          _$BannerReponseImpl value, $Res Function(_$BannerReponseImpl) then) =
      __$$BannerReponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$BannerReponseImplCopyWithImpl<$Res>
    extends _$BannerReponseCopyWithImpl<$Res, _$BannerReponseImpl>
    implements _$$BannerReponseImplCopyWith<$Res> {
  __$$BannerReponseImplCopyWithImpl(
      _$BannerReponseImpl _value, $Res Function(_$BannerReponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerReponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? image = freezed,
  }) {
    return _then(_$BannerReponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerReponseImpl implements _BannerReponse {
  const _$BannerReponseImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'link') this.link,
      @JsonKey(name: 'image') this.image});

  factory _$BannerReponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerReponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'link')
  final String? link;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString() {
    return 'BannerReponse(id: $id, title: $title, link: $link, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerReponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, link, image);

  /// Create a copy of BannerReponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerReponseImplCopyWith<_$BannerReponseImpl> get copyWith =>
      __$$BannerReponseImplCopyWithImpl<_$BannerReponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerReponseImplToJson(
      this,
    );
  }
}

abstract class _BannerReponse implements BannerReponse {
  const factory _BannerReponse(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'link') final String? link,
      @JsonKey(name: 'image') final String? image}) = _$BannerReponseImpl;

  factory _BannerReponse.fromJson(Map<String, dynamic> json) =
      _$BannerReponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'link')
  String? get link;
  @override
  @JsonKey(name: 'image')
  String? get image;

  /// Create a copy of BannerReponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerReponseImplCopyWith<_$BannerReponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) {
  return _HomeResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeResponse {
  @JsonKey(name: 'base')
  BaseResponse? get base => throw _privateConstructorUsedError;
  @JsonKey(name: 'services')
  List<ServiceReponse>? get service => throw _privateConstructorUsedError;
  @JsonKey(name: 'stores')
  List<StoreReponse>? get stores => throw _privateConstructorUsedError;
  @JsonKey(name: 'banners')
  List<BannerReponse>? get banners => throw _privateConstructorUsedError;

  /// Serializes this HomeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeResponseCopyWith<HomeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeResponseCopyWith<$Res> {
  factory $HomeResponseCopyWith(
          HomeResponse value, $Res Function(HomeResponse) then) =
      _$HomeResponseCopyWithImpl<$Res, HomeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'base') BaseResponse? base,
      @JsonKey(name: 'services') List<ServiceReponse>? service,
      @JsonKey(name: 'stores') List<StoreReponse>? stores,
      @JsonKey(name: 'banners') List<BannerReponse>? banners});

  $BaseResponseCopyWith<$Res>? get base;
}

/// @nodoc
class _$HomeResponseCopyWithImpl<$Res, $Val extends HomeResponse>
    implements $HomeResponseCopyWith<$Res> {
  _$HomeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = freezed,
    Object? service = freezed,
    Object? stores = freezed,
    Object? banners = freezed,
  }) {
    return _then(_value.copyWith(
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as BaseResponse?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as List<ServiceReponse>?,
      stores: freezed == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<StoreReponse>?,
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerReponse>?,
    ) as $Val);
  }

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseResponseCopyWith<$Res>? get base {
    if (_value.base == null) {
      return null;
    }

    return $BaseResponseCopyWith<$Res>(_value.base!, (value) {
      return _then(_value.copyWith(base: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeResponseImplCopyWith<$Res>
    implements $HomeResponseCopyWith<$Res> {
  factory _$$HomeResponseImplCopyWith(
          _$HomeResponseImpl value, $Res Function(_$HomeResponseImpl) then) =
      __$$HomeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'base') BaseResponse? base,
      @JsonKey(name: 'services') List<ServiceReponse>? service,
      @JsonKey(name: 'stores') List<StoreReponse>? stores,
      @JsonKey(name: 'banners') List<BannerReponse>? banners});

  @override
  $BaseResponseCopyWith<$Res>? get base;
}

/// @nodoc
class __$$HomeResponseImplCopyWithImpl<$Res>
    extends _$HomeResponseCopyWithImpl<$Res, _$HomeResponseImpl>
    implements _$$HomeResponseImplCopyWith<$Res> {
  __$$HomeResponseImplCopyWithImpl(
      _$HomeResponseImpl _value, $Res Function(_$HomeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = freezed,
    Object? service = freezed,
    Object? stores = freezed,
    Object? banners = freezed,
  }) {
    return _then(_$HomeResponseImpl(
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as BaseResponse?,
      service: freezed == service
          ? _value._service
          : service // ignore: cast_nullable_to_non_nullable
              as List<ServiceReponse>?,
      stores: freezed == stores
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<StoreReponse>?,
      banners: freezed == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerReponse>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$HomeResponseImpl implements _HomeResponse {
  const _$HomeResponseImpl(
      {@JsonKey(name: 'base') this.base,
      @JsonKey(name: 'services') final List<ServiceReponse>? service,
      @JsonKey(name: 'stores') final List<StoreReponse>? stores,
      @JsonKey(name: 'banners') final List<BannerReponse>? banners})
      : _service = service,
        _stores = stores,
        _banners = banners;

  factory _$HomeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeResponseImplFromJson(json);

  @override
  @JsonKey(name: 'base')
  final BaseResponse? base;
  final List<ServiceReponse>? _service;
  @override
  @JsonKey(name: 'services')
  List<ServiceReponse>? get service {
    final value = _service;
    if (value == null) return null;
    if (_service is EqualUnmodifiableListView) return _service;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<StoreReponse>? _stores;
  @override
  @JsonKey(name: 'stores')
  List<StoreReponse>? get stores {
    final value = _stores;
    if (value == null) return null;
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BannerReponse>? _banners;
  @override
  @JsonKey(name: 'banners')
  List<BannerReponse>? get banners {
    final value = _banners;
    if (value == null) return null;
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeResponse(base: $base, service: $service, stores: $stores, banners: $banners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeResponseImpl &&
            (identical(other.base, base) || other.base == base) &&
            const DeepCollectionEquality().equals(other._service, _service) &&
            const DeepCollectionEquality().equals(other._stores, _stores) &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      const DeepCollectionEquality().hash(_service),
      const DeepCollectionEquality().hash(_stores),
      const DeepCollectionEquality().hash(_banners));

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeResponseImplCopyWith<_$HomeResponseImpl> get copyWith =>
      __$$HomeResponseImplCopyWithImpl<_$HomeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeResponseImplToJson(
      this,
    );
  }
}

abstract class _HomeResponse implements HomeResponse {
  const factory _HomeResponse(
          {@JsonKey(name: 'base') final BaseResponse? base,
          @JsonKey(name: 'services') final List<ServiceReponse>? service,
          @JsonKey(name: 'stores') final List<StoreReponse>? stores,
          @JsonKey(name: 'banners') final List<BannerReponse>? banners}) =
      _$HomeResponseImpl;

  factory _HomeResponse.fromJson(Map<String, dynamic> json) =
      _$HomeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'base')
  BaseResponse? get base;
  @override
  @JsonKey(name: 'services')
  List<ServiceReponse>? get service;
  @override
  @JsonKey(name: 'stores')
  List<StoreReponse>? get stores;
  @override
  @JsonKey(name: 'banners')
  List<BannerReponse>? get banners;

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeResponseImplCopyWith<_$HomeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
