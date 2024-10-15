import 'package:clean_architecture/app/constant.dart';
import 'package:clean_architecture/data/reponses/responses.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST('/customers/login')
  Future<AuthResponse> login(
    @Field('email') String email,
    @Field('password') String password,
    @Field('imei') String imei,
    @Field('deviceType') String deviceType,
  );

  @POST('/customers/register')
  Future<AuthResponse> register(
    @Field('country_mobile_code') String countryMobileCode,
    @Field('name') String name,
    @Field('email') String email,
    @Field('password') String password,
    @Field('mobile_number') String mobileNumber,
    @Field('avatar') String avatar,
  );
}
