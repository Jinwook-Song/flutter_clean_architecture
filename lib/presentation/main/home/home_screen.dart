import 'package:clean_architecture/app/di.dart';
import 'package:clean_architecture/presentation/main/home/home_view_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeViewModel _homeViewModel = instance.get<HomeViewModel>();

  @override
  void initState() {
    super.initState();
    _bind();
  }

  void _bind() {
    _homeViewModel.start();
  }

  @override
  void dispose() {
    _homeViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Center();
  }
}
