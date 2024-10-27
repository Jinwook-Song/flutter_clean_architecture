import 'package:clean_architecture/presentation/main/home/home_screen.dart';
import 'package:clean_architecture/presentation/main/notifications_screen.dart';
import 'package:clean_architecture/presentation/main/search_screen.dart';
import 'package:clean_architecture/presentation/main/settings_screen.dart';
import 'package:clean_architecture/presentation/resources/color_manager.dart';
import 'package:clean_architecture/presentation/resources/strings_manager.dart';
import 'package:clean_architecture/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ScreenModel {
  final String title;
  final IconData icon;
  final Widget screen;

  const ScreenModel(this.title, this.icon, this.screen);
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<ScreenModel> _pages = [
    ScreenModel(AppStrings.home.tr(), Icons.home, const HomeScreen()),
    ScreenModel(AppStrings.search.tr(), Icons.search, const SearchScreen()),
    ScreenModel(AppStrings.notifications.tr(), Icons.notifications,
        const NotificationsScreen()),
    ScreenModel(
        AppStrings.settings.tr(), Icons.settings, const SettingsScreen()),
  ];
  final String _title = AppStrings.home.tr();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _title,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: _pages[_currentIndex].screen,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: ColorManager.black,
              spreadRadius: AppSize.s1_5,
            )
          ],
        ),
        child: BottomNavigationBar(
          onTap: _onNavTap,
          selectedItemColor: ColorManager.primary,
          unselectedItemColor: ColorManager.grey,
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          items: [
            for (final i in [0, 1, 2, 3])
              BottomNavigationBarItem(
                icon: Icon(_pages[i].icon),
                label: _pages[i].title,
              ),
          ],
        ),
      ),
    );
  }

  void _onNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
