import 'package:clean_architecture/data/network/failure.dart';
import 'package:clean_architecture/data/request/request.dart';
import 'package:clean_architecture/domain/model/model.dart';
import 'package:clean_architecture/domain/repository/repository.dart';
import 'package:clean_architecture/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class RegisterUsecase
    implements BaseUsecase<RegisterUsecaseInput, Authentication> {
  final Repository _repository;
  RegisterUsecase(this._repository);

  @override
  Future<Either<Failure, Authentication>> execute(
      RegisterUsecaseInput input) async {
    return await _repository.register(RegisterRequest(
      countryMobileCode: input.countryMobileCode,
      name: input.name,
      email: input.email,
      password: input.password,
      mobileNumber: input.mobileNumber,
      avatar: input.avatar,
    ));
  }
}

class RegisterUsecaseInput {
  final String countryMobileCode;
  final String name;
  final String email;
  final String password;
  final String mobileNumber;
  final String avatar;

  RegisterUsecaseInput({
    required this.countryMobileCode,
    required this.name,
    required this.email,
    required this.password,
    required this.mobileNumber,
    required this.avatar,
  });
}
