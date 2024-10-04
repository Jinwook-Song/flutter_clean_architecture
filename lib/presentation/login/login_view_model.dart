import 'dart:async';

import 'package:clean_architecture/app/logging.dart';
import 'package:clean_architecture/domain/usecase/login_usecase.dart';
import 'package:clean_architecture/presentation/base/base_view_model.dart';
import 'package:clean_architecture/presentation/common/data_classes.dart';

class LoginViewModel extends BaseViewModel
    implements LoginViewModelInputs, LoginViewModelOutputs {
  final LoginUsecase _loginUsecase;

  LoginViewModel(this._loginUsecase);

  final StreamController<String> _usernameController =
      StreamController.broadcast();
  final StreamController<String> _passwordController =
      StreamController.broadcast();

  LoginObject _loginObject = const LoginObject();

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void dispose() {
    _usernameController.close();
    _passwordController.close();
  }

  // Inputs
  @override
  Sink get inputUsername => _usernameController.sink;
  @override
  Sink get inputPassword => _passwordController.sink;

  @override
  login() async {
    final response = await _loginUsecase.execute(LoginUsecaseInput(
      _loginObject.username,
      _loginObject.password,
    ));

    response.fold(
      (failure) => logging(failure.message),
      (data) => logging(data.customer?.name),
    );
  }

  @override
  setUsername(String username) {
    inputUsername.add(username);
    _loginObject = _loginObject.copyWith(username: username);
  }

  @override
  setPassword(String password) {
    inputPassword.add(password);
    _loginObject = _loginObject.copyWith(password: password);
  }

  // Outputs
  @override
  Stream<bool> get isUsernameValid =>
      _usernameController.stream.map(_isUsernameValid);
  @override
  Stream<bool> get isPasswordValid =>
      _passwordController.stream.map(_isPasswordValid);

  // Private methods
  bool _isUsernameValid(String username) => username.isNotEmpty;
  bool _isPasswordValid(String password) => password.isNotEmpty;
}

abstract class LoginViewModelInputs {
  // 3 functions for actions
  setUsername(String username);
  setPassword(String password);
  login();

  // 2 sinks for streams
  Sink get inputUsername;
  Sink get inputPassword;
}

abstract class LoginViewModelOutputs {
  Stream<bool> get isUsernameValid;
  Stream<bool> get isPasswordValid;
}
