import 'package:flutter/material.dart';

class OptionModel {
  OptionModel(
      {required this.mainImg,
      required this.optionName,
      required this.optionDescription});

  final AssetImage mainImg;
  final String optionDescription;
  final String optionName;
}
