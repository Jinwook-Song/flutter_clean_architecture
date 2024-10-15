import 'package:clean_architecture/data/network/failure.dart';
import 'package:clean_architecture/data/request/request.dart';
import 'package:clean_architecture/domain/model/model.dart';
import 'package:dartz/dartz.dart';

abstract class Repository {
  Future<Either<Failure, Authentication>> login(LoginRequest request);
  Future<Either<Failure, Authentication>> register(RegisterRequest request);
}
