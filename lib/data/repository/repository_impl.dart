import 'package:clean_architecture/data/mapper/mapper.dart';
import 'package:clean_architecture/domain/model.dart';
import 'package:dartz/dartz.dart';

import 'package:clean_architecture/data/data_source/remote_data_source.dart';
import 'package:clean_architecture/data/network/failure.dart';
import 'package:clean_architecture/data/network/network_info.dart';
import 'package:clean_architecture/data/request/request.dart';
import 'package:clean_architecture/domain/repository.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(LoginRequest request) async {
    if (!await _networkInfo.isConnected) {
      return Left(Failure(code: 501, message: 'offline'));
    }

    final response = await _remoteDataSource.login(request);

    if (response.base == null) {
      return Left(Failure(code: 500, message: 'Invalid response'));
    }

    if (response.base!.status == 0) {
      return Right(response.toModel());
    } else {
      return Left(
          Failure(code: 409, message: response.base?.message ?? 'biz error'));
    }
  }
}
