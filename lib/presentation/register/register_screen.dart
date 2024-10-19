import 'package:clean_architecture/app/di.dart';
import 'package:clean_architecture/presentation/register/register_view_model.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final RegisterViewModel _registerViewModel =
      instance.get<RegisterViewModel>();
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bind();
  }

  @override
  void dispose() {
    _registerViewModel.dispose();
    _nameController.dispose();
    _mobileNumberController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  _bind() {
    _registerViewModel.start();
    _nameController.addListener(
      () => _registerViewModel.setName(_nameController.text),
    );
    _mobileNumberController.addListener(
      () => _registerViewModel.setMobileNumber(_mobileNumberController.text),
    );
    _emailController.addListener(
      () => _registerViewModel.setEmail(_emailController.text),
    );
    _passwordController.addListener(
      () => _registerViewModel.setPassword(_passwordController.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
