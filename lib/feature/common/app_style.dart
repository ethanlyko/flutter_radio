import 'package:flutter/material.dart';

abstract class AppStyle {
  static Color appBarBackgroundColor =
      const Color.fromRGBO(0x00, 0x00, 0x40, 0.8);
  static Color appBarForegroundColor =
      const Color.fromRGBO(0xff, 0xff, 0xff, 0.9);

  static Color buttomNavigationBackgroundColor =
      const Color.fromRGBO(0x00, 0x00, 0x30, 0.9);

  static Color iconColor = const Color.fromRGBO(0xff, 0xff, 0xff, 0.5);

  static Color contentBackgroundColor =
      const Color.fromRGBO(0x00, 0x00, 0x50, 0.7);

  static ButtonStyle selectedButtonStyle = IconButton.styleFrom(
    backgroundColor: Colors.amber.shade300.withOpacity(0.3),
  );
  static ButtonStyle transparentButtonStyle = IconButton.styleFrom(
    backgroundColor: Colors.transparent,
  );

  static Color dialogBackgroundColor = const Color.fromARGB(177, 14, 14, 21);
  static Color dialogMaskColor = Colors.lightBlue.withOpacity(0.7);

  static TextStyle textLarge = const TextStyle(
    fontSize: 32,
    color: Color.fromRGBO(0xff, 0xff, 0xff, 0.9),
  );
  static TextStyle textMedium = const TextStyle(
    fontSize: 28,
    color: Color.fromRGBO(0xff, 0xff, 0xff, 0.9),
  );
  static TextStyle textSmall = const TextStyle(
    fontSize: 24,
    color: Color.fromRGBO(0xff, 0xff, 0xff, 0.9),
  );
  static TextStyle textSmaller = const TextStyle(
    fontSize: 20,
    color: Color.fromRGBO(0xff, 0xff, 0xff, 0.9),
  );
}
