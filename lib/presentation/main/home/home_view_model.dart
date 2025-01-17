import 'dart:async';

import 'package:clean_architecture/domain/model/model.dart';
import 'package:clean_architecture/domain/usecase/base_usecase.dart';
import 'package:clean_architecture/domain/usecase/home_usecase.dart';
import 'package:clean_architecture/presentation/base/base_view_model.dart';
import 'package:clean_architecture/presentation/common/state_renderer/state_renderer.dart';
import 'package:clean_architecture/presentation/common/state_renderer/state_renderer_impl.dart';
import 'package:rxdart/subjects.dart';

class HomeViewModel extends BaseViewModel
    implements HomeViewModelInputs, HomeViewModelOutputs {
  final HomeUsecase _homeUsecase;
  HomeViewModel(this._homeUsecase);

  final StreamController<List<Banner>> _bannersController = BehaviorSubject();
  final StreamController<List<Service>> _servicesController = BehaviorSubject();
  final StreamController<List<Store>> _storesController = BehaviorSubject();

  @override
  void start() {
    _getHome();
  }

  @override
  void dispose() {
    _bannersController.close();
    _servicesController.close();
    _storesController.close();
    super.dispose();
  }

  _getHome() async {
    inputState.add(LoadingState(
      stateRendererType: StateRendererType.FULL_SCREEN_LOADING_STATE,
    ));

    final response = await _homeUsecase.execute(NoParams());
    response.fold(
      (failure) => inputState.add(ErrorState(
          stateRendererType: StateRendererType.FULL_SCREEN_ERROR_STATE,
          message: failure.message)),
      (HomeObject homeObject) {
        inputState.add(ContentState());
        inputBanners.add(homeObject.data.banners);
        inputServices.add(homeObject.data.services);
        inputStores.add(homeObject.data.stores);
      },
    );
  }

  // Inputs
  @override
  Sink<List<Banner>> get inputBanners => _bannersController.sink;

  @override
  Sink<List<Service>> get inputServices => _servicesController.sink;

  @override
  Sink<List<Store>> get inputStores => _storesController.sink;

  // Outputs
  @override
  Stream<List<Banner>> get banners => _bannersController.stream;

  @override
  Stream<List<Service>> get services => _servicesController.stream;

  @override
  Stream<List<Store>> get stores => _storesController.stream;
}

abstract class HomeViewModelInputs {
  Sink<List<Banner>> get inputBanners;
  Sink<List<Service>> get inputServices;
  Sink<List<Store>> get inputStores;
}

abstract class HomeViewModelOutputs {
  Stream<List<Banner>> get banners;
  Stream<List<Service>> get services;
  Stream<List<Store>> get stores;
}
