import 'dart:io';

import 'package:clean_architecture/app/app_prefs.dart';
import 'package:clean_architecture/app/constant.dart';
import 'package:clean_architecture/app/di.dart';
import 'package:clean_architecture/presentation/common/state_renderer/state_renderer_impl.dart';
import 'package:clean_architecture/presentation/register/register_view_model.dart';
import 'package:clean_architecture/presentation/resources/assets_manager.dart';
import 'package:clean_architecture/presentation/resources/color_manager.dart';
import 'package:clean_architecture/presentation/resources/routes_manager.dart';
import 'package:clean_architecture/presentation/resources/strings_manager.dart';
import 'package:clean_architecture/presentation/resources/value_manager.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final RegisterViewModel _registerViewModel =
      instance.get<RegisterViewModel>();
  final AppPreferences _appPreferences = instance.get<AppPreferences>();

  final ImagePicker _imagePicker = instance.get<ImagePicker>();
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
    _registerViewModel.setCountryCode('+82');
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

    _registerViewModel.isSuccessController.stream.listen((isLoggedIn) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        // navigato to main
        _appPreferences.setIsUserLoggedIn();
        Navigator.of(context).pushReplacementNamed(Routes.mainRoute);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        elevation: AppSize.s0,
        iconTheme: const IconThemeData(color: ColorManager.primary),
        backgroundColor: ColorManager.white,
      ),
      body: StreamBuilder<FlowState>(
        stream: _registerViewModel.outputState,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: _getContentWidget());

          return Center(
            child: snapshot.data!.getScreenWidget(
              context,
              _getContentWidget(),
              _registerViewModel.register,
            ),
          );
        },
      ),
    );
  }

  Widget _getContentWidget() {
    return Container(
      padding: const EdgeInsets.only(top: AppPadding.p30),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(ImageAssets.splashLogo),
              const Gap(AppSize.s28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s28),
                child: StreamBuilder<String?>(
                  stream: _registerViewModel.errorName,
                  builder: (context, snapshot) {
                    return TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: AppStrings.username,
                        labelText: AppStrings.username,
                        errorText: snapshot.data,
                      ),
                    );
                  },
                ),
              ),
              const Gap(AppSize.s14),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: AppPadding.p28),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CountryCodePicker(
                          onChanged: (country) =>
                              _registerViewModel.setCountryCode(
                                  country.dialCode ?? Constant.empty),
                          initialSelection: '+82',
                          showCountryOnly: true,
                          hideMainText: true,
                          favorite: const ['+82', '+43', 'US'],
                          padding: EdgeInsets.zero,
                          alignLeft: true,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: StreamBuilder<String?>(
                          stream: _registerViewModel.errorMobileNumber,
                          builder: (context, snapshot) {
                            return TextFormField(
                              keyboardType: TextInputType.phone,
                              controller: _mobileNumberController,
                              decoration: InputDecoration(
                                hintText: AppStrings.mobileNumber,
                                labelText: AppStrings.mobileNumber,
                                errorText: snapshot.data,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(AppSize.s14),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s28),
                child: StreamBuilder<String?>(
                  stream: _registerViewModel.errorEmail,
                  builder: (context, snapshot) {
                    return TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: AppStrings.emailHint,
                        labelText: AppStrings.emailHint,
                        errorText: snapshot.data,
                      ),
                    );
                  },
                ),
              ),
              const Gap(AppSize.s14),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s28),
                child: StreamBuilder<String?>(
                  stream: _registerViewModel.errorPassword,
                  builder: (context, snapshot) {
                    return TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        hintText: AppStrings.password,
                        labelText: AppStrings.password,
                        errorText: snapshot.data,
                      ),
                    );
                  },
                ),
              ),
              const Gap(AppSize.s14),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s28),
                child: Container(
                  height: AppSize.s40,
                  padding: const EdgeInsets.all(AppPadding.p8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorManager.grey,
                      width: AppSize.s1_5,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(AppSize.s8),
                    ),
                  ),
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: _showPicker,
                    child: _getMediaWidget(),
                  ),
                ),
              ),
              const Gap(AppSize.s28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s28),
                child: StreamBuilder(
                  stream: _registerViewModel.isAllValid,
                  builder: (context, snapshot) {
                    return SizedBox(
                      width: double.infinity,
                      height: AppSize.s40,
                      child: ElevatedButton(
                          onPressed: !snapshot.hasData || snapshot.data == false
                              ? null
                              : _registerViewModel.register,
                          child: const Text(AppStrings.register)),
                    );
                  },
                ),
              ),
              const Gap(AppSize.s8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s28),
                child: TextButton(
                  onPressed: Navigator.of(context).pop,
                  child: Text(
                    AppStrings.haveAccount,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getMediaWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Flexible(
              child: Text(
            AppStrings.profilePicture,
            maxLines: 1,
          )),
          Flexible(
            child: StreamBuilder<File>(
              stream: _registerViewModel.isAvatarValid,
              builder: (context, snapshot) {
                return SizedBox(
                  child: _imagePickedByUser(snapshot.data),
                );
              },
            ),
          ),
          Flexible(child: SvgPicture.asset(ImageAssets.photoCameraIc))
        ],
      ),
    );
  }

  Widget _imagePickedByUser(File? image) {
    if (image == null || image.path.isEmpty) return const SizedBox.shrink();

    return Image.file(image);
  }

  _showPicker() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
            child: Wrap(
          children: [
            ListTile(
              onTap: _imageFromGallery,
              leading: const Icon(Icons.photo),
              title: const Text(AppStrings.photoGalley),
              trailing: const Icon(Icons.arrow_forward),
            ),
            ListTile(
              onTap: _imageFromCamera,
              leading: const Icon(Icons.camera),
              title: const Text(AppStrings.photoCamera),
              trailing: const Icon(Icons.arrow_forward),
            ),
          ],
        ));
      },
    );
  }

  _imageFromGallery() async {
    XFile? image = await _imagePicker.pickImage(source: ImageSource.gallery);
    _registerViewModel.setAvatar(File(image?.path ?? ''));

    if (mounted) Navigator.of(context).pop();
  }

  _imageFromCamera() async {
    XFile? image = await _imagePicker.pickImage(source: ImageSource.camera);
    _registerViewModel.setAvatar(File(image?.path ?? ''));

    if (mounted) Navigator.of(context).pop();
  }
}
