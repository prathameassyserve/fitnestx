import 'package:fitnestx/common/color_extension.dart';
import 'package:fitnestx/locators.dart';
import 'package:fitnestx/prefs/app_db.dart';
import 'package:fitnestx/routes.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await setupLocator();
  await locator.isReady<AppDB>();
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
