import 'package:fitnestx/common/color_extension.dart';
import 'package:fitnestx/common/item_collection.dart';
import 'package:flutter/material.dart';

class Extension {
  void showBottom(BuildContext context, VoidCallback onClick) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          var genderData = ItemCollection.genderData;
          return Container(
            padding: const EdgeInsets.fromLTRB(10, 18, 10, 0),
            height: 200,
            color: TColor.primaryColor1,
            child: ListView.builder(
              itemCount: genderData.length,
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () {},
                  child: Text(
                    genderData[index],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: TColor.white,
                    ),
                  ),
                );
              },
            ),
          );
        });
  }
}
