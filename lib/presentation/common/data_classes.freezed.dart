// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginObject _$LoginObjectFromJson(Map<String, dynamic> json) {
  return _LoginObject.fromJson(json);
}

/// @nodoc
mixin _$LoginObject {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this LoginObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginObjectCopyWith<LoginObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginObjectCopyWith<$Res> {
  factory $LoginObjectCopyWith(
          LoginObject value, $Res Function(LoginObject) then) =
      _$LoginObjectCopyWithImpl<$Res, LoginObject>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginObjectCopyWithImpl<$Res, $Val extends LoginObject>
    implements $LoginObjectCopyWith<$Res> {
  _$LoginObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginObjectImplCopyWith<$Res>
    implements $LoginObjectCopyWith<$Res> {
  factory _$$LoginObjectImplCopyWith(
          _$LoginObjectImpl value, $Res Function(_$LoginObjectImpl) then) =
      __$$LoginObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginObjectImplCopyWithImpl<$Res>
    extends _$LoginObjectCopyWithImpl<$Res, _$LoginObjectImpl>
    implements _$$LoginObjectImplCopyWith<$Res> {
  __$$LoginObjectImplCopyWithImpl(
      _$LoginObjectImpl _value, $Res Function(_$LoginObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginObjectImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginObjectImpl implements _LoginObject {
  const _$LoginObjectImpl({this.username = '', this.password = ''});

  factory _$LoginObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginObjectImplFromJson(json);

  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'LoginObject(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginObjectImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of LoginObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginObjectImplCopyWith<_$LoginObjectImpl> get copyWith =>
      __$$LoginObjectImplCopyWithImpl<_$LoginObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginObjectImplToJson(
      this,
    );
  }
}

abstract class _LoginObject implements LoginObject {
  const factory _LoginObject({final String username, final String password}) =
      _$LoginObjectImpl;

  factory _LoginObject.fromJson(Map<String, dynamic> json) =
      _$LoginObjectImpl.fromJson;

  @override
  String get username;
  @override
  String get password;

  /// Create a copy of LoginObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginObjectImplCopyWith<_$LoginObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterObject _$RegisterObjectFromJson(Map<String, dynamic> json) {
  return _RegisterObject.fromJson(json);
}

/// @nodoc
mixin _$RegisterObject {
  String get countryMobileCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  /// Serializes this RegisterObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterObjectCopyWith<RegisterObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterObjectCopyWith<$Res> {
  factory $RegisterObjectCopyWith(
          RegisterObject value, $Res Function(RegisterObject) then) =
      _$RegisterObjectCopyWithImpl<$Res, RegisterObject>;
  @useResult
  $Res call(
      {String countryMobileCode,
      String name,
      String email,
      String password,
      String mobileNumber,
      String avatar});
}

/// @nodoc
class _$RegisterObjectCopyWithImpl<$Res, $Val extends RegisterObject>
    implements $RegisterObjectCopyWith<$Res> {
  _$RegisterObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryMobileCode = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? mobileNumber = null,
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      countryMobileCode: null == countryMobileCode
          ? _value.countryMobileCode
          : countryMobileCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterObjectImplCopyWith<$Res>
    implements $RegisterObjectCopyWith<$Res> {
  factory _$$RegisterObjectImplCopyWith(_$RegisterObjectImpl value,
          $Res Function(_$RegisterObjectImpl) then) =
      __$$RegisterObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String countryMobileCode,
      String name,
      String email,
      String password,
      String mobileNumber,
      String avatar});
}

/// @nodoc
class __$$RegisterObjectImplCopyWithImpl<$Res>
    extends _$RegisterObjectCopyWithImpl<$Res, _$RegisterObjectImpl>
    implements _$$RegisterObjectImplCopyWith<$Res> {
  __$$RegisterObjectImplCopyWithImpl(
      _$RegisterObjectImpl _value, $Res Function(_$RegisterObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryMobileCode = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? mobileNumber = null,
    Object? avatar = null,
  }) {
    return _then(_$RegisterObjectImpl(
      countryMobileCode: null == countryMobileCode
          ? _value.countryMobileCode
          : countryMobileCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterObjectImpl implements _RegisterObject {
  const _$RegisterObjectImpl(
      {this.countryMobileCode = '',
      this.name = '',
      this.email = '',
      this.password = '',
      this.mobileNumber = '',
      this.avatar = ''});

  factory _$RegisterObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterObjectImplFromJson(json);

  @override
  @JsonKey()
  final String countryMobileCode;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String mobileNumber;
  @override
  @JsonKey()
  final String avatar;

  @override
  String toString() {
    return 'RegisterObject(countryMobileCode: $countryMobileCode, name: $name, email: $email, password: $password, mobileNumber: $mobileNumber, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterObjectImpl &&
            (identical(other.countryMobileCode, countryMobileCode) ||
                other.countryMobileCode == countryMobileCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, countryMobileCode, name, email,
      password, mobileNumber, avatar);

  /// Create a copy of RegisterObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterObjectImplCopyWith<_$RegisterObjectImpl> get copyWith =>
      __$$RegisterObjectImplCopyWithImpl<_$RegisterObjectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterObjectImplToJson(
      this,
    );
  }
}

abstract class _RegisterObject implements RegisterObject {
  const factory _RegisterObject(
      {final String countryMobileCode,
      final String name,
      final String email,
      final String password,
      final String mobileNumber,
      final String avatar}) = _$RegisterObjectImpl;

  factory _RegisterObject.fromJson(Map<String, dynamic> json) =
      _$RegisterObjectImpl.fromJson;

  @override
  String get countryMobileCode;
  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  String get mobileNumber;
  @override
  String get avatar;

  /// Create a copy of RegisterObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterObjectImplCopyWith<_$RegisterObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
