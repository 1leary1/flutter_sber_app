import 'package:flutter/material.dart';
import 'package:sber_app2/models/option_model.dart';
import 'package:sber_app2/resources/color_select.dart';
import 'package:sber_app2/resources/text_styles.dart';

// ignore: must_be_immutable
class Option extends StatelessWidget {
  OptionModel model;

  Option({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: SizedBox(
            height: 64,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: model.mainImg, width: 36, height: 36),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 263,
                      child: Text(model.optionName,
                          style: TextStyles.infoBlackStyle),
                    ),
                    SizedBox(
                      width: 263,
                      child: Text(
                        model.optionDescription,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.550000011920929),
                          fontSize: model.optionDescription != "" ? 14 : 0,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.41,
                          //необходимый костыль
                        ),
                      ),
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
            )));
  }
}
