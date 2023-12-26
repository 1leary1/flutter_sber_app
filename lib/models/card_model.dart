import 'package:flutter/material.dart';

class CardModel {
  const CardModel(
      {required this.icon,
      required this.header,
      required this.date,
      required this.costs});

  final AssetImage icon;
  final String header;
  final String date;
  final String costs;
}
