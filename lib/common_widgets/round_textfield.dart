import 'package:fitnestx/common/color_extension.dart';
import 'package:fitnestx/common_widgets/textfeild_icon.dart';
import 'package:flutter/material.dart';

class RoundTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String hintText;
  final String icon;
  final Widget? rightIcon;
  final bool obscureText;
  final bool isClickable;
  final EdgeInsets? margin;
  final TextInputAction? textInputAction;
  final VoidCallback? onPressed;

  const RoundTextField({
    super.key,
    required this.hintText,
    required this.icon,
    this.textInputAction = TextInputAction.next,
    this.controller,
    this.margin,
    this.keyboardType,
    this.obscureText = false,
    this.isClickable = false,
    this.onPressed,
    this.rightIcon,
  });

  @override
  Widget build(BuildContext context) {
    if (isClickable) {
      return Container(
        margin: margin,
        decoration: BoxDecoration(
            color: TColor.lightGray, borderRadius: BorderRadius.circular(15)),
        child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: hintText,
              suffixIcon: rightIcon,
              prefixIcon: TextFieldIcon(icon: icon),
              hintStyle: TextStyle(color: TColor.gray, fontSize: 12)),
        ),
      );
    } else {
      return InkWell(
          onTap: onPressed,
          child: Container(
            margin: margin,
            decoration: BoxDecoration(
                color: TColor.lightGray,
                borderRadius: BorderRadius.circular(15)),
            child: IgnorePointer(
              child: TextField(
                controller: controller,
                keyboardType: keyboardType,
                obscureText: obscureText,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: hintText,
                    suffixIcon: rightIcon,
                    prefixIcon: TextFieldIcon(icon: icon),
                    hintStyle: TextStyle(color: TColor.gray, fontSize: 12)),
              ),
            ),
          ));
    }
  }
}
