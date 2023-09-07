import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText(
      {super.key,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis,
      this.color = const Color(0xFF332d2b),
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          fontFamily: 'Roboto',
          color: color,
          fontSize: size == 0 ? 26 : size,
          fontWeight: FontWeight.w400,
          decoration: TextDecoration.none),
    );
  }
}
