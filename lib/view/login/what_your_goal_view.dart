import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitnestx/common/color_extension.dart';
import 'package:fitnestx/common/item_collection.dart';
import 'package:fitnestx/common/string_extension.dart';
import 'package:fitnestx/common_widgets/round_button.dart';
import 'package:fitnestx/generated/assets.dart';
import 'package:fitnestx/routes.dart';
import 'package:flutter/material.dart';

class WhatYourGoalView extends StatefulWidget {
  const WhatYourGoalView({super.key});

  @override
  State<WhatYourGoalView> createState() => _WhatYourGoalViewState();
}

class _WhatYourGoalViewState extends State<WhatYourGoalView> {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var countCarousel = 1;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: CarouselSlider(
                items: ItemCollection.goalData
                    .map(
                      (gObj) => Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          vertical: media.width * 0.1,
                          horizontal: 25,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            colors: TColor.primaryG,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: FittedBox(
                          child: Column(
                            children: [
                              Image.asset(
                                gObj.image,
                                width: media.width * 0.5,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(height: media.width * 0.1),
                              Text(
                                gObj.title,
                                style: TextStyle(
                                  color: TColor.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Container(
                                width: media.width * 0.1,
                                height: 1,
                                color: TColor.white,
                              ),
                              SizedBox(height: media.width * 0.02),
                              Text(
                                gObj.titleSub,
                                style: TextStyle(
                                  color: TColor.white,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 0.74,
                  initialPage: 0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              width: media.width,
              child: Column(
                children: [
                  SizedBox(height: media.width * 0.05),
                  Text(
                    TString.labelWhatIsYourGoal,
                    style: TextStyle(
                        color: TColor.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    TString.labelWhatIsYourGoalSub,
                    style: TextStyle(color: TColor.gray, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  SizedBox(height: media.width * 0.05),
                  RoundButton(
                    buttonName: TString.labelConfirm,
                    onPressed: () {
                      if (countCarousel == ItemCollection.goalData.length) {
                        Navigator.pushNamed(context, ScreenName.welcomeView);
                      } else {
                        buttonCarouselController.nextPage(
                          curve: Curves.linear,
                          duration: const Duration(milliseconds: 300),
                        );
                        countCarousel++;
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
