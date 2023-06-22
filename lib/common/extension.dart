import 'package:fitnestx/common/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Extension {
  static String defaultDateFormat = 'yyyy-MM-dd';
  static String DOBFormat = 'dd MMM, yyyy';

  static String formatDate(String inputFormat, DateTime dateTime) =>
      DateFormat(inputFormat).format(dateTime);

  static Future<void> selectDate(
      BuildContext context, Function(DateTime?) onSelected) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    onSelected.call(picked);
  }

  static void showCommonBottom(
    BuildContext context,
    List<String> array,
    Function(String) onClick,
  ) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.fromLTRB(10, 18, 10, 0),
            height: 200,
            color: TColor.primaryColor1,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: array.length,
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () {
                    onClick(array[index]);
                    Navigator.pop(context);
                  },
                  child: Text(
                    array[index],
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
