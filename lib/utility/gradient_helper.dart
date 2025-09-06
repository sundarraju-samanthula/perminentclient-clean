import 'package:flutter/material.dart';

List<Color> getGradientColors(int pageIndex) {
  switch (pageIndex) {
    case 0:
      return [const Color(0xFF011E37), const Color(0xFF4286f4)];
    case 1:
      return [const Color(0xFF033311), const Color(0xFF3CA55C)];
    case 2:
      return [const Color(0xFF470428), const Color(0xFFD76D77)];
    default:
      return [Colors.blue, Colors.green];
  }
}
