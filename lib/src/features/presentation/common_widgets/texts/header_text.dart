import 'package:flutter/material.dart';

Widget createText(
    {String text = "",
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.bold,
    double? fontSize,
    TextAlign textAlign = TextAlign.justify}) {
  return Text(text,
      textAlign: textAlign,
      style:
          TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize));
}
