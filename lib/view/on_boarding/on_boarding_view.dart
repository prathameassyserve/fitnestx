import 'package:fitnestx/common/color_extension.dart';
import 'package:fitnestx/common/item_collection.dart';
import 'package:fitnestx/common_widgets/on_boarding_page.dart';
import 'package:fitnestx/prefs/app_db.dart';
import 'package:fitnestx/routes.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}


class _OnBoardingViewState extends State<OnBoardingView> {
  int selectedPage = 0;
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      selectedPage = pageController.page?.round() ?? 0;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            itemCount: ItemCollection.onBoardingScreenData.length,
            controller: pageController,
            itemBuilder: (context, index) {
              return OnBoardingPage(
                onBoardingData: ItemCollection.onBoardingScreenData[index],
              );
            },
          ),
          SizedBox(
            width: 120,
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: CircularProgressIndicator(
                    color: TColor.primaryColor1,
                    value: (selectedPage + 1) / 4,
                    strokeWidth: 2,
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: TColor.primaryColor2,
                  ),
                  child: IconButton(
                    onPressed: () {
                      if (selectedPage <
                          ItemCollection.onBoardingScreenData.length - 1) {
                        selectedPage++;
                        buildPageController();
                      } else {
                        appDB.isOnBoarding = true;
                        Navigator.popAndPushNamed(
                          context,
                          ScreenName.signUpView,
                        );
                      }
                    },
                    icon: Icon(
                      Icons.navigate_next,
                      color: TColor.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }


  void buildPageController() {
    pageController.animateToPage(
      selectedPage,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
