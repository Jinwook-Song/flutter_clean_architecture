import 'package:clean_architecture/data/mapper/mapper.dart';
import 'package:clean_architecture/data/network/error_handler.dart';
import 'package:clean_architecture/domain/model/model.dart';
import 'package:dartz/dartz.dart';

import 'package:clean_architecture/data/data_source/remote_data_source.dart';
import 'package:clean_architecture/data/network/failure.dart';
import 'package:clean_architecture/data/network/network_info.dart';
import 'package:clean_architecture/data/request/request.dart';
import 'package:clean_architecture/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(LoginRequest request) async {
    if (!await _networkInfo.isConnected) {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }

    try {
      final response = await _remoteDataSource.login(request);

      if (response.base == null) {
        return Left(DataSource.INTERNAL_SERVER_ERROR.getFailure());
      }

      if (response.base!.status == ApiInternalStatus.SUCCESS) {
        return Right(response.toModel());
      } else {
        return Left(Failure(
          code: response.base?.status ?? ApiInternalStatus.FAILURE,
          message: response.base?.message ?? ResponseMessage.DEFAULT,
        ));
      }
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  @override
  Future<Either<Failure, Authentication>> register(
      RegisterRequest request) async {
    if (!await _networkInfo.isConnected) {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }

    try {
      final response = await _remoteDataSource.register(request);

      if (response.base == null) {
        return Left(DataSource.INTERNAL_SERVER_ERROR.getFailure());
      }

      if (response.base!.status == ApiInternalStatus.SUCCESS) {
        return Right(response.toModel());
      } else {
        return Left(Failure(
          code: response.base?.status ?? ApiInternalStatus.FAILURE,
          message: response.base?.message ?? ResponseMessage.DEFAULT,
        ));
      }
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }
}
