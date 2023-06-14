import 'package:fitnestx/common/color_extension.dart';
import 'package:fitnestx/common/string_extension.dart';
import 'package:fitnestx/common_widgets/round_textfield.dart';
import 'package:fitnestx/common_widgets/textfeild_icon.dart';
import 'package:fitnestx/generated/assets.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isPasswordSecure = true;
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  TString.labelHeyThere,
                  style: TextStyle(color: TColor.gray, fontSize: 16),
                ),
                Text(
                  TString.labelCreateAccount,
                  style: TextStyle(
                      color: TColor.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                RoundTextField(
                  hintText: TString.hintFirstName,
                  icon: Assets.imgUserText,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                RoundTextField(
                  hintText: TString.hintLastName,
                  icon: Assets.imgUserText,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                RoundTextField(
                  hintText: TString.hintEmail,
                  icon: Assets.imgEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                RoundTextField(
                  hintText: TString.hintPassword,
                  icon: Assets.imgLock,
                  obscureText: isPasswordSecure,
                  textInputAction: TextInputAction.done,
                  rightIcon: TextButton(
                    onPressed: () {
                      setState(() {
                        isPasswordSecure = !isPasswordSecure;
                      });
                    },
                    child: TextFieldIcon(
                      icon: isPasswordSecure
                          ? Assets.imgIcEyeClose
                          : Assets.imgIcEyeOpen,
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isCheck = !isCheck;
                        });
                      },
                      icon: Icon(
                        isCheck
                            ? Icons.check_box_outlined
                            : Icons.check_box_outline_blank_outlined,
                        color: TColor.gray,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        TString.labelTermsCondition,
                        style: TextStyle(color: TColor.gray, fontSize: 10),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
