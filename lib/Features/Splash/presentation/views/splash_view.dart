import 'package:chatbot/constants.dart';
import 'package:chatbot/core/utils/app_router.dart';
import 'package:chatbot/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navigateToOnBoarding();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Image.asset(AssetsData.logo),
      ),
    );
  }

  void navigateToOnBoarding() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).go(AppRouter.kOnBoardingView);
    });
  }
}
