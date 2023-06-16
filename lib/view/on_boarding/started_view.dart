import 'package:fitnestx/common/color_extension.dart';
import 'package:fitnestx/common/string_extension.dart';
import 'package:fitnestx/common_widgets/round_button.dart';
import 'package:fitnestx/prefs/app_db.dart';
import 'package:fitnestx/routes.dart';
import 'package:fitnestx/view/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';

class StartedView extends StatefulWidget {
  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  bool isChangeColor = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: Container(
        width: media.width,
        decoration: BoxDecoration(
          gradient: isChangeColor
              ? LinearGradient(
                  colors: TColor.primaryG,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              TString.labelFitness,
              style: TextStyle(
                color: TColor.black,
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              TString.labelFitnessSub,
              style: TextStyle(
                color: TColor.gray,
                fontSize: 18,
              ),
            ),
            const Spacer(),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: RoundButton(
                  buttonName: TString.buttonGetStarted,
                  type: isChangeColor
                      ? RoundButtonType.textGradient
                      : RoundButtonType.bgGradient,
                  onPressed: () {
                    if (isChangeColor) {
                      appDB.isStarted = true;
                      Navigator.popAndPushNamed(context, ScreenName.onBoardingView);
                    } else {
                      setState(() {
                        isChangeColor = true;
                      });
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
