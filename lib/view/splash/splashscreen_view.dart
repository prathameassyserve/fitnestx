import 'dart:async';

import 'package:fitnestx/common/color_extension.dart';
import 'package:fitnestx/generated/assets.dart';
import 'package:fitnestx/routes.dart';
import 'package:flutter/material.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    handler();
  }

  void handler() async {
    Timer(const Duration(seconds: 2), () {
      Navigator.popAndPushNamed(context, ScreenName.onStartedView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      body: Center(
        child: Image.asset(Assets.imgPp1),
      ),
    );
  }
}
