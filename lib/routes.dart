import 'package:fitnestx/view/login/signup_view.dart';
import 'package:fitnestx/view/on_boarding/on_boarding_view.dart';
import 'package:fitnestx/view/on_boarding/started_view.dart';
import 'package:fitnestx/view/splash/splashscreen_view.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  ScreenName.splashScreenView: (context) => const SplashScreenView(),
  ScreenName.onBoardingView: (context) => const OnBoardingView(),
  ScreenName.onStartedView: (context) => const StartedView(),
  ScreenName.signUpView: (context) => const SignUpView(),
};

final class ScreenName {
  static String splashScreenView = "splashScreenView";
  static String onBoardingView = "onBoardingView";
  static String onStartedView = "onStartedView";
  static String signUpView = "signUpView";
}
