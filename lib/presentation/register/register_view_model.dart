import 'dart:async';
import 'dart:io';

import 'package:clean_architecture/app/logging.dart';
import 'package:clean_architecture/domain/usecase/register_usecase.dart';
import 'package:clean_architecture/presentation/base/base_view_model.dart';
import 'package:clean_architecture/presentation/common/data_classes.dart';
import 'package:clean_architecture/presentation/common/state_renderer/state_renderer.dart';
import 'package:clean_architecture/presentation/common/state_renderer/state_renderer_impl.dart';

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

  final StreamController<bool> isSuccessController = StreamController();

  RegisterObject _registerObject = const RegisterObject();

  @override
  void start() {
    inputState.add(ContentState());
  }

  @override
  void dispose() {
    _isAllValidController.close();
    _nameController.close();
    _mobileNumberController.close();
    _emailController.close();
    _passwordController.close();
    _avatarController.close();
    isSuccessController.close();
    super.dispose();
  }

  @override
  register() async {
    inputState.add(LoadingState(
        stateRendererType: StateRendererType.FULL_SCREEN_LOADING_STATE));
    final response = await _registerUsecase.execute(RegisterUsecaseInput(
        countryMobileCode: _registerObject.countryMobileCode,
        name: _registerObject.name,
        email: _registerObject.email,
        password: _registerObject.password,
        mobileNumber: _registerObject.mobileNumber,
        avatar: _registerObject.avatar));

    response.fold(
      (failure) => inputState.add(ErrorState(
          stateRendererType: StateRendererType.POPUP_ERROR_STATE,
          message: failure.message)),
      (data) {
        inputState.add(ContentState());
        isSuccessController.add(true);
      },
    );
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
  Sink get inputAllValid => _isAllValidController.sink;

  @override
  setName(String name) {
    _nameController.add(name);
    if (_isNameValid(name)) {
      _registerObject = _registerObject.copyWith(name: name);
    } else {
      _registerObject = _registerObject.copyWith(name: '');
    }
    _validate();
  }

  @override
  setMobileNumber(String mobileNumber) {
    _mobileNumberController.add(mobileNumber);
    if (_isMobileNumberValid(mobileNumber)) {
      _registerObject = _registerObject.copyWith(mobileNumber: mobileNumber);
    } else {
      _registerObject = _registerObject.copyWith(mobileNumber: '');
    }
    _validate();
  }

  @override
  setEmail(String email) {
    _emailController.add(email);
    if (_isEmailValid(email)) {
      _registerObject = _registerObject.copyWith(email: email);
    } else {
      _registerObject = _registerObject.copyWith(email: '');
    }
    _validate();
  }

  @override
  setPassword(String password) {
    _passwordController.add(password);
    if (_isPasswordValid(password)) {
      _registerObject = _registerObject.copyWith(password: password);
    } else {
      _registerObject = _registerObject.copyWith(password: '');
    }
    _validate();
  }

  @override
  setCountryCode(String countryCode) {
    if (countryCode.isNotEmpty) {
      _registerObject =
          _registerObject.copyWith(countryMobileCode: countryCode);
    } else {
      _registerObject = _registerObject.copyWith(countryMobileCode: '');
    }
    _validate();
  }

  @override
  setAvatar(File file) {
    _avatarController.add(file);
    if (file.path.isNotEmpty) {
      _registerObject = _registerObject.copyWith(avatar: file.path);
    } else {
      _registerObject = _registerObject.copyWith(avatar: '');
    }
    _validate();
  }

  // outputs
  @override
  Stream<bool> get isNameValid =>
      _nameController.stream.map((name) => _isNameValid(name));
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

  @override
  Stream<bool> get isAllValid =>
      _isAllValidController.stream.map((_) => _isAllValid());

  // private methods
  bool _isNameValid(String name) => name.length > 4;
  bool _isEmailValid(String email) =>
      RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  bool _isMobileNumberValid(String number) => number.length >= 9;
  bool _isPasswordValid(String password) => password.length >= 6;
  bool _isAllValid() {
    return _registerObject.avatar.isNotEmpty &&
        _registerObject.countryMobileCode.isNotEmpty &&
        _registerObject.email.isNotEmpty &&
        _registerObject.mobileNumber.isNotEmpty &&
        _registerObject.name.isNotEmpty &&
        _registerObject.password.isNotEmpty;
  }

  _validate() => inputAllValid.add(null);
}

abstract class RegisterViewModelInputs {
  register();

  setName(String name);
  setCountryCode(String countryCode);
  setMobileNumber(String mobileNumber);
  setEmail(String email);
  setPassword(String password);
  setAvatar(File file);

  Sink get inputName;
  Sink get inputMobileNumber;
  Sink get inputEmail;
  Sink get inputPassword;
  Sink get inputAvatar;
  Sink get inputAllValid;
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

  Stream<bool> get isAllValid;
}
