import 'package:flutter/material.dart';
import '../resources/text_styles.dart';

// ignore: must_be_immutable
class InfoBlock extends StatelessWidget {
  String headerText;
  String infoText;

  InfoBlock(this.headerText, this.infoText, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
              width: double.infinity,
              child: Flexible(
                  child: Text(
                headerText,
                style: TextStyles.headerStyle,
              ))),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: Flexible(
              child: Text(
                infoText,
                style: TextStyles.infoStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
