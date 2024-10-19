import 'package:clean_architecture/presentation/main/home_screen.dart';
import 'package:clean_architecture/presentation/main/notifications_screen.dart';
import 'package:clean_architecture/presentation/main/search_screen.dart';
import 'package:clean_architecture/presentation/main/settings_screen.dart';
import 'package:clean_architecture/presentation/resources/color_manager.dart';
import 'package:clean_architecture/presentation/resources/strings_manager.dart';
import 'package:clean_architecture/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _pages = [
    const HomeScreen(),
    const SearchScreen(),
    const NotificationsScreen(),
    const SettingsScreen()
  ];
  final List<String> _titles = [
    AppStrings.home,
    AppStrings.search,
    AppStrings.notifications,
    AppStrings.settings,
  ];

  String _title = AppStrings.home;
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
      body: _pages[_currentIndex],
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
            BottomNavigationBarItem(
                icon: const Icon(Icons.home), label: _titles[0]),
            BottomNavigationBarItem(
                icon: const Icon(Icons.search), label: _titles[1]),
            BottomNavigationBarItem(
                icon: const Icon(Icons.notifications), label: _title[2]),
            BottomNavigationBarItem(
                icon: const Icon(Icons.settings), label: _titles[3]),
          ],
        ),
      ),
    );
  }

  void _onNavTap(int index) {
    setState(() {
      _currentIndex = index;
      _title = _titles[index];
    });
  }
}
