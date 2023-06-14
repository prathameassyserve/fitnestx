import 'package:fitnestx/common/color_extension.dart';
import 'package:fitnestx/routes.dart';
import 'package:fitnestx/view/on_boarding/started_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitnest X',
      theme: ThemeData(
        primaryColor: TColor.primaryColor1,
        fontFamily: "Poppins",
      ),
      initialRoute: ScreenName.splashScreenView,
      routes: routes,
      //home: const StartedView(),
    );
  }
}
