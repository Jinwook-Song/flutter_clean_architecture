import 'package:clean_architecture/app/di.dart';
import 'package:clean_architecture/presentation/common/state_renderer/state_renderer_impl.dart';
import 'package:clean_architecture/presentation/login/login_view_model.dart';
import 'package:clean_architecture/presentation/resources/assets_manager.dart';
import 'package:clean_architecture/presentation/resources/color_manager.dart';
import 'package:clean_architecture/presentation/resources/routes_manager.dart';
import 'package:clean_architecture/presentation/resources/strings_manager.dart';
import 'package:clean_architecture/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginViewModel _loginViewModel = instance.get<LoginViewModel>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _bind();
  }

  @override
  void dispose() {
    _loginViewModel.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  _bind() {
    _loginViewModel.start();
    _usernameController.addListener(
      () => _loginViewModel.setUsername(_usernameController.text),
    );
    _passwordController.addListener(
      () => _loginViewModel.setPassword(_passwordController.text),
    );

    _loginViewModel.isLoggedInController.stream.listen((isLoggedIn) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        // navigato to main
        Navigator.of(context).pushReplacementNamed(Routes.mainRoute);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: StreamBuilder<FlowState>(
        stream: _loginViewModel.outputState,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return _getContentWidget();

          return snapshot.data!.getScreenWidget(
            context,
            _getContentWidget(),
            _loginViewModel.login,
          );
        },
      ),
    );
  }

  Widget _getContentWidget() {
    return Container(
      padding: const EdgeInsets.only(top: AppPadding.p60),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                ImageAssets.splashLogo,
              ),
              const Gap(AppSize.s28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s28),
                child: StreamBuilder(
                  stream: _loginViewModel.isUsernameValid,
                  builder: (context, snapshot) {
                    final isValid = snapshot.data ?? true;
                    return TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _usernameController,
                      decoration: InputDecoration(
                        hintText: AppStrings.username,
                        labelText: AppStrings.username,
                        errorText: isValid ? null : AppStrings.usernameError,
                      ),
                    );
                  },
                ),
              ),
              const Gap(AppSize.s28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s28),
                child: StreamBuilder(
                  stream: _loginViewModel.isPasswordValid,
                  builder: (context, snapshot) {
                    final isValid = snapshot.data ?? true;
                    return TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        hintText: AppStrings.password,
                        labelText: AppStrings.password,
                        errorText: isValid ? null : AppStrings.passwordError,
                      ),
                    );
                  },
                ),
              ),
              const Gap(AppSize.s28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s28),
                child: StreamBuilder(
                  stream: _loginViewModel.isAllValid,
                  builder: (context, snapshot) {
                    return SizedBox(
                      width: double.infinity,
                      height: AppSize.s40,
                      child: ElevatedButton(
                          onPressed: !snapshot.hasData || snapshot.data == false
                              ? null
                              : _loginViewModel.login,
                          child: const Text(AppStrings.login)),
                    );
                  },
                ),
              ),
              const Gap(AppSize.s8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          Routes.forgotPasswordRoute,
                        );
                      },
                      child: Text(
                        AppStrings.forgetPassword,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          Routes.registerRoute,
                        );
                      },
                      child: Text(
                        AppStrings.registerText,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
