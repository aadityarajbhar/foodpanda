import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget normalText({
  required text,
  double fSize = 14.0,
  fontWeight,
  color,
  textalign = TextAlign.left,
  deco,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fSize.toDouble(),
      fontWeight: fontWeight,
      color: color,
      decoration: deco,
    ),
    textAlign: textalign,
  );
}
