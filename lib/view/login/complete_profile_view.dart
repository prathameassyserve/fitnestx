import 'package:fitnestx/common/color_extension.dart';
import 'package:fitnestx/common/extension.dart';
import 'package:fitnestx/common/item_collection.dart';
import 'package:fitnestx/common/string_extension.dart';
import 'package:fitnestx/common_widgets/round_button.dart';
import 'package:fitnestx/common_widgets/round_textfield.dart';
import 'package:fitnestx/generated/assets.dart';
import 'package:fitnestx/routes.dart';
import 'package:flutter/material.dart';

class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({super.key});

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  TextEditingController txtDate = TextEditingController();
  TextEditingController txtGender = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.asset(
                  Assets.imgCompleteProfile,
                  width: media.width,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(height: media.width * 0.05),
                Text(
                  TString.labelLetsCompleteYourProfile,
                  style: TextStyle(
                      color: TColor.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  TString.labelHeyThere,
                  style: TextStyle(color: TColor.gray, fontSize: 16),
                ),
                SizedBox(height: media.width * 0.05),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      RoundTextField(
                        hintText: TString.labelYourGender,
                        icon: Assets.imgGender,
                        controller: txtGender,
                        isClickable: true,
                        onPressed: () {
                          Extension.showCommonBottom(
                            context,
                            ItemCollection.genderData,
                            (String data) {
                              setState(() {
                                txtGender.text = data;
                              });
                            },
                          );
                        },
                      ),
                      SizedBox(height: media.width * 0.04),
                      RoundTextField(
                        hintText: TString.hintDateOfBirth,
                        icon: Assets.imgDate,
                        controller: txtDate,
                        isClickable: true,
                        onPressed: () {
                          Extension.selectDate(context, (selectedDate) {
                            txtDate.text = Extension.formatDate(
                              Extension.DOBFormat,
                              selectedDate!,
                            );
                          });
                        },
                      ),
                      SizedBox(height: media.width * 0.04),
                      Row(
                        children: [
                          Expanded(
                            child: RoundTextField(
                              hintText: TString.hintYourWeight,
                              icon: Assets.imgWeight,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient:
                                  LinearGradient(colors: TColor.secondaryG),
                            ),
                            child: Text(
                              TString.labelKG,
                              style: TextStyle(
                                color: TColor.white,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: media.width * 0.04),
                      Row(
                        children: [
                          Expanded(
                            child: RoundTextField(
                              hintText: TString.hintYourHeight,
                              icon: Assets.imgHight,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient:
                                  LinearGradient(colors: TColor.secondaryG),
                            ),
                            child: Text(
                              TString.labelCM,
                              style: TextStyle(
                                color: TColor.white,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: media.width * 0.07),
                      RoundButton(
                        buttonName: TString.labelNext,
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            ScreenName.whatYourGoalView,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
