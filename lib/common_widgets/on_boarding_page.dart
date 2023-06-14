import 'package:fitnestx/common/color_extension.dart';
import 'package:fitnestx/pojo/on_boarding_data.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  final OnBoardingData onBoardingData;
  const OnBoardingPage({super.key, required this.onBoardingData});
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SizedBox(
      width: media.width,
      height: media.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            onBoardingData.image,
            width: media.width,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: media.width * 0.1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              onBoardingData.title,
              style: TextStyle(
                  color: TColor.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              onBoardingData.titleSub,
              style: TextStyle(
                  color: TColor.gray,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
