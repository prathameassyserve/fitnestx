import 'package:fitnestx/common/color_extension.dart';
import 'package:fitnestx/common/string_extension.dart';
import 'package:flutter/material.dart';

enum RoundButtonType { bgGradient, textGradient }

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    required this.buttonName,
    this.type = RoundButtonType.bgGradient,
    this.fontSizeDynamic = 16.0,
    this.fontWeight = FontWeight.w700,
    required this.onPressed,
  });

  final double fontSizeDynamic;
  final String buttonName;
  final VoidCallback onPressed;
  final RoundButtonType type;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: TColor.primaryG,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          borderRadius: BorderRadius.circular(25),
          boxShadow: checkTheTypeIsGradient()
              ? [
                  const BoxShadow(
                    color: Colors.black26,
                    blurRadius: 0.5,
                    offset: Offset(0, 0.5),
                  )
                ]
              : null),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: double.maxFinite,
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        textColor: TColor.primaryColor1,
        elevation: checkTheTypeIsGradient() ? 0 : 1,
        color: checkTheTypeIsGradient() ? Colors.transparent : TColor.white,
        child: checkTheTypeIsGradient()
            ? Text(
                buttonName,
                style: TextStyle(
                    color: TColor.white,
                    fontSize: fontSizeDynamic,
                    fontWeight: FontWeight.w700),
              )
            : ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return LinearGradient(
                          colors: TColor.primaryG,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)
                      .createShader(
                          Rect.fromLTRB(0, 0, bounds.width, bounds.height));
                },
                child: Text(
                  TString.buttonGetStarted,
                  style: TextStyle(
                      color: TColor.primaryColor1,
                      fontSize: fontSizeDynamic,
                      fontWeight: fontWeight),
                ),
              ),
      ),
    );
  }

  bool checkTheTypeIsGradient() => type == RoundButtonType.bgGradient;
}
