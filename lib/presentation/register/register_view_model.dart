import 'dart:async';
import 'dart:io';

import 'package:clean_architecture/domain/usecase/register_usecase.dart';
import 'package:clean_architecture/presentation/base/base_view_model.dart';
import 'package:clean_architecture/presentation/common/data_classes.dart';

class RegisterViewModel extends BaseViewModel
    implements RegisterViewModelInputs, RegisterViewModelOutputs {
  final RegisterUsecase _registerUsecase;
  RegisterViewModel(this._registerUsecase);

  final StreamController<String> _nameController = StreamController.broadcast();
  final StreamController<String> _mobileNumberController =
      StreamController.broadcast();
  final StreamController<String> _emailController =
      StreamController.broadcast();
  final StreamController<String> _passwordController =
      StreamController.broadcast();
  final StreamController<File> _avatarController = StreamController.broadcast();
  final StreamController<void> _isAllValidController =
      StreamController.broadcast();

  final RegisterObject _registerObject = const RegisterObject();

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void dispose() {
    _isAllValidController.close();
    _nameController.close();
    _mobileNumberController.close();
    _emailController.close();
    _passwordController.close();
    _avatarController.close();
    super.dispose();
  }

  // inputs
  @override
  Sink get inputName => _nameController.sink;
  @override
  Sink get inputMobileNumber => _mobileNumberController.sink;
  @override
  Sink get inputEmail => _emailController.sink;
  @override
  Sink get inputPassword => _passwordController.sink;
  @override
  Sink get inputAvatar => _avatarController.sink;

  @override
  register() {
    throw UnimplementedError();
  }

  // outputs
  @override
  Stream<bool> get isNameValid => _nameController.stream.map(_isNameValid);
  @override
  Stream<String?> get errorName =>
      isNameValid.map((valid) => valid ? null : 'Invalid name');

  @override
  Stream<bool> get isEmailValid => _emailController.stream.map(_isEmailValid);
  @override
  Stream<String?> get errorEmail =>
      isEmailValid.map((valid) => valid ? null : 'Invalid email');

  @override
  Stream<bool> get isMobileNumberValid =>
      _mobileNumberController.stream.map(_isMobileNumberValid);
  @override
  Stream<String?> get errorMobileNumber => isMobileNumberValid
      .map((valid) => valid ? null : 'Invalid mobile number');

  @override
  Stream<bool> get isPasswordValid =>
      _passwordController.stream.map(_isPasswordValid);

  @override
  Stream<String?> get errorPassword =>
      isPasswordValid.map((valid) => valid ? null : 'Invalid password');

  @override
  Stream<File> get isAvatarValid => _avatarController.stream;

  // private methods
  bool _isNameValid(String name) => name.length > 4;
  bool _isEmailValid(String email) =>
      RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  bool _isMobileNumberValid(String number) => number.length >= 10;
  bool _isPasswordValid(String password) => password.length >= 6;
}

abstract class RegisterViewModelInputs {
  register();

  Sink get inputName;
  Sink get inputMobileNumber;
  Sink get inputEmail;
  Sink get inputPassword;
  Sink get inputAvatar;
}

abstract class RegisterViewModelOutputs {
  Stream<bool> get isNameValid;
  Stream<String?> get errorName;

  Stream<bool> get isMobileNumberValid;
  Stream<String?> get errorMobileNumber;

  Stream<bool> get isEmailValid;
  Stream<String?> get errorEmail;

  Stream<bool> get isPasswordValid;
  Stream<String?> get errorPassword;

  Stream<File> get isAvatarValid;
}
