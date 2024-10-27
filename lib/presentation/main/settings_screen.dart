import 'package:clean_architecture/app/app_prefs.dart';
import 'package:clean_architecture/app/di.dart';
import 'package:clean_architecture/data/data_source/local_data_source.dart';
import 'package:clean_architecture/presentation/resources/assets_manager.dart';
import 'package:clean_architecture/presentation/resources/routes_manager.dart';
import 'package:clean_architecture/presentation/resources/strings_manager.dart';
import 'package:clean_architecture/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:easy_localization/easy_localization.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final AppPreferences _appPreferences = instance<AppPreferences>();
  final LocalDataSource _localDataSource = instance<LocalDataSource>();

  void _changeLanguage() {
    // i will apply localisation later
    _appPreferences.setLanguageChanged();
  }

  void _contactUs() {
    // its a task for you to open any web bage with dummy content
  }

  void _inviteFriends() {
    // its a task to share app name with friends
  }

  void _logout() {
    _appPreferences.logout(); // clear login flag from app prefs
    _localDataSource.clearCache();
    Navigator.pushReplacementNamed(context, Routes.loginRoute);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppPadding.p8),
      children: [
        ListTile(
          onTap: _changeLanguage,
          leading: SvgPicture.asset(ImageAssets.changeLangIc),
          title: Text(
            AppStrings.changeLanguage.tr(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          trailing: SvgPicture.asset(ImageAssets.settingsRightArrowIc),
        ),
        ListTile(
          onTap: _contactUs,
          leading: SvgPicture.asset(ImageAssets.contactUsIc),
          title: Text(
            AppStrings.contactUs.tr(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          trailing: SvgPicture.asset(ImageAssets.settingsRightArrowIc),
        ),
        ListTile(
          onTap: _inviteFriends,
          leading: SvgPicture.asset(ImageAssets.inviteFriendsIc),
          title: Text(
            AppStrings.inviteYourFriends.tr(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          trailing: SvgPicture.asset(ImageAssets.settingsRightArrowIc),
        ),
        ListTile(
          onTap: _logout,
          leading: SvgPicture.asset(ImageAssets.logoutIc),
          title: Text(
            AppStrings.logout.tr(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ],
    );
  }
}
