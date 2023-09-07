import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;

  const SmallText(
      {super.key,
      this.size = 12,
      this.color = const Color.fromARGB(255, 15, 4, 0),
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black,
          fontSize: size,
          // height: height,
          decoration: TextDecoration.none),
    );
  }
}
