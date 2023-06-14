import 'package:fitnestx/common/color_extension.dart';
import 'package:flutter/material.dart';

class TextFieldIcon extends StatelessWidget {
  final String icon;

  const TextFieldIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      alignment: Alignment.center,
      width: 20,
      height: 20,
      child: Image.asset(
        icon,
        width: 20,
        height: 20,
        fit: BoxFit.contain,
        color: TColor.gray,
      ),
    );
  }
}
