import 'package:fitnestx/view/login/complete_profile_view.dart';
import 'package:fitnestx/view/login/login_view.dart';
import 'package:fitnestx/view/login/signup_view.dart';
import 'package:fitnestx/view/login/welcome_view.dart';
import 'package:fitnestx/view/login/what_your_goal_view.dart';
import 'package:fitnestx/view/on_boarding/on_boarding_view.dart';
import 'package:fitnestx/view/on_boarding/started_view.dart';
import 'package:fitnestx/view/splash/splashscreen_view.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  ScreenName.splashScreenView: (context) => const SplashScreenView(),
  ScreenName.onBoardingView: (context) => const OnBoardingView(),
  ScreenName.onStartedView: (context) => const StartedView(),
  ScreenName.signUpView: (context) => const SignUpView(),
  ScreenName.completeProfileView: (context) => const CompleteProfileView(),
  ScreenName.whatYourGoalView: (context) => const WhatYourGoalView(),
  ScreenName.welcomeView: (context) => const WelcomeView(),
  ScreenName.loginView: (context) => const LoginView(),
};

final class ScreenName {
  static String splashScreenView = "splashScreenView";
  static String onBoardingView = "onBoardingView";
  static String onStartedView = "onStartedView";
  static String signUpView = "signUpView";
  static String completeProfileView = "completeProfileView";
  static String whatYourGoalView = "whatYourGoalView";
  static String welcomeView = "welcomeView";
  static String loginView = "loginView";
}
