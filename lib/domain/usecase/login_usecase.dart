import 'package:clean_architecture/app/functions.dart';
import 'package:clean_architecture/data/network/failure.dart';
import 'package:clean_architecture/data/request/request.dart';
import 'package:clean_architecture/domain/model/model.dart';
import 'package:clean_architecture/domain/repository/repository.dart';
import 'package:clean_architecture/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class LoginUsecase implements BaseUsecase<LoginUsecaseInput, Authentication> {
  final Repository _repository;
  LoginUsecase(this._repository);

  @override
  Future<Either<Failure, Authentication>> execute(
      LoginUsecaseInput input) async {
    final deviceInfo = await getDeviceInfo();
    return await _repository.login(LoginRequest(
        email: input.email,
        password: input.password,
        imei: '', // deviceInfo.identifier,
        deviceType: '' // deviceInfo.name,
        ));
  }
}

class LoginUsecaseInput {
  String email;
  String password;

  LoginUsecaseInput(this.email, this.password);
}
