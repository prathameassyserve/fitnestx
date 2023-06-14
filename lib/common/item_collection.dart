import 'package:fitnestx/common/string_extension.dart';
import 'package:fitnestx/generated/assets.dart';
import 'package:fitnestx/pojo/on_boarding_data.dart';

class ItemCollection {
  static List<OnBoardingData> onBoardingScreenData = [
    OnBoardingData(
      title: TString.labelTrackYourGoal1,
      titleSub: TString.labelTrackYourGoalSub1,
      image: Assets.imgOn1,
    ),
    OnBoardingData(
      title: TString.labelTrackYourGoal2,
      titleSub: TString.labelTrackYourGoalSub2,
      image: Assets.imgOn2,
    ),
    OnBoardingData(
      title: TString.labelTrackYourGoal3,
      titleSub: TString.labelTrackYourGoalSub3,
      image: Assets.imgOn3,
    ),
    OnBoardingData(
      title: TString.labelTrackYourGoal4,
      titleSub: TString.labelTrackYourGoalSub4,
      image: Assets.imgOn4,
    ),
  ];
}
