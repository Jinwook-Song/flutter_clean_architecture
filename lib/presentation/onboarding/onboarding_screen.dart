import 'package:clean_architecture/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.white,
      body: Center(child: Text('Welcome to onboarding')),
    );
  }
}
