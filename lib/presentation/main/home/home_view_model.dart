import 'dart:async';

import 'package:clean_architecture/domain/model/model.dart';
import 'package:clean_architecture/domain/usecase/home_usecase.dart';
import 'package:clean_architecture/presentation/base/base_view_model.dart';
import 'package:rxdart/subjects.dart';

class HomeViewModel extends BaseViewModel {
  final HomeUsecase _homeUsecase;
  HomeViewModel(this._homeUsecase);

  final StreamController<List<Banner>> _bannersController = BehaviorSubject();
  final StreamController<List<Service>> _servicesController = BehaviorSubject();
  final StreamController<List<Store>> _storesController = BehaviorSubject();

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void dispose() {
    _bannersController.close();
    _servicesController.close();
    _storesController.close();
    super.dispose();
  }
}
