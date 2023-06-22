import 'package:fitnestx/common/color_extension.dart';
import 'package:fitnestx/common/string_extension.dart';
import 'package:fitnestx/common_widgets/round_button.dart';
import 'package:fitnestx/generated/assets.dart';
import 'package:fitnestx/routes.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: media.width * 0.1),
              Image.asset(
                Assets.imgWelcome,
                width: media.width * 75,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(height: media.width * 0.1),
              Text(
                TString.labelWelcome,
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                TString.labelWelcomeSub,
                textAlign: TextAlign.center,
                style: TextStyle(color: TColor.gray, fontSize: 16),
              ),
              const Spacer(),
              RoundButton(
                buttonName: TString.buttonGoToHome,
                onPressed: () {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
