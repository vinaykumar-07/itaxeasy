import 'package:flutter/material.dart';
import 'package:itaxeasy/widget/small_text.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.iconColor,
      this.textColor,
      this.icon1});
  final IconData icon;
  final IconData? icon1;
  final String text;

  final Color iconColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SmallText(
          text: text,
          color: textColor,
          size: 15,
        ),
        Icon(
          icon1,
          color: iconColor,
        ),
        
      ],
    );
  }
}
