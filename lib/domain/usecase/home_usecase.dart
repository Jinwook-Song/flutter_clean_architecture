import 'package:clean_architecture/data/network/failure.dart';
import 'package:clean_architecture/domain/model/model.dart';
import 'package:clean_architecture/domain/repository/repository.dart';
import 'package:clean_architecture/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class HomeUsecase implements BaseUsecase<NoParams, HomeObject> {
  final Repository _repository;
  HomeUsecase(this._repository);

  @override
  Future<Either<Failure, HomeObject>> execute(NoParams input) async {
    return await _repository.getHome();
  }
}
