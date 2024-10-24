import 'dart:async';

import 'package:clean_architecture/presentation/common/state_renderer/state_renderer_impl.dart';
import 'package:rxdart/subjects.dart';

abstract class BaseViewModel extends BaseViewModelInputs
    implements BaseViewModelOutputs {
  final StreamController<FlowState> _inputStateStreamController =
      BehaviorSubject();

  @override
  Sink<FlowState> get inputState => _inputStateStreamController.sink;

  @override
  Stream<FlowState> get outputState => _inputStateStreamController.stream;

  @override
  void dispose() {
    _inputStateStreamController.close();
  }

  // shared variables and functions that will be used through any view model.
}

abstract class BaseViewModelInputs {
  void start();
  void dispose();

  Sink<FlowState> get inputState;
}

abstract class BaseViewModelOutputs {
  Stream<FlowState> get outputState;
}
