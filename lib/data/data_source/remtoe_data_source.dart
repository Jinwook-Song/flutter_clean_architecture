import 'package:clean_architecture/data/network/app_api.dart';
import 'package:clean_architecture/data/reponses/responses.dart';
import 'package:clean_architecture/data/request/request.dart';

abstract class RemtoeDataSource {
  Future<AuthResponse> login(LoginRequest loginRequest);
}

class RemtoeDataSourceImpl implements RemtoeDataSource {
  final AppServiceClient _appServiceClient;

  RemtoeDataSourceImpl(this._appServiceClient);

  @override
  Future<AuthResponse> login(LoginRequest loginRequest) async {
    return await _appServiceClient.login(
      loginRequest.email,
      loginRequest.password,
      loginRequest.imei,
      loginRequest.deviceType,
    );
  }
}
