import 'package:flutter/material.dart';
import 'package:sber_app2/resources/color_select.dart';
import 'package:sber_app2/resources/text_styles.dart';

// ignore: must_be_immutable
class Option extends StatelessWidget {
  AssetImage mainImg;
  String optionDescription;
  String optionName;

  Option(this.mainImg, this.optionName, this.optionDescription, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 64,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: mainImg, width: 36, height: 36),
            const SizedBox(
              width: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 263,
                  child: Text(optionName, style: TextStyles.infoBlackStyle),
                ),
                SizedBox(
                  width: 263,
                  child: Text(optionDescription, style: TextStyles.infoStyle),
                )
              ],
            ),
            const Spacer(),
            const Icon(
              color: ColorSelect.iconArrowColor,
              size: 24,
              Icons.keyboard_arrow_right_rounded,
            ),
            const SizedBox(
              width: 8,
            )
          ],
        ));
  }
}
