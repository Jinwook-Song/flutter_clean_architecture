import 'package:clean_architecture/data/network/failure.dart';
import 'package:clean_architecture/data/reponses/responses.dart';
import 'package:clean_architecture/data/request/request.dart';
import 'package:dartz/dartz.dart';

abstract class Repository {
  Future<Either<Failure, AuthResponse>> login(LoginRequest request);
}
