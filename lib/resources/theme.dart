import 'package:flutter/material.dart';

ThemeData basicTheme() => ThemeData(
    fontFamily: 'SF Pro Text',
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w700,
        height: 0.06,
      ),
    ));
