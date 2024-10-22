import 'package:clean_architecture/data/network/failure.dart';
import 'package:dartz/dartz.dart';

class NoParams {}

abstract class BaseUsecase<Input, Output> {
  Future<Either<Failure, Output>> execute(Input input);
}
