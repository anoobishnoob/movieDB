// this is a hexparser I wrote to stream line the colors and make them look better
import 'package:flutter/material.dart';


class HexColor extends Color{
  static int _getColorFromHex(String hexColor){
    hexColor = hexColor.toLowerCase().replaceAll("#", "");
    if (hexColor.length == 6){
      hexColor = "FF"+ hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}


