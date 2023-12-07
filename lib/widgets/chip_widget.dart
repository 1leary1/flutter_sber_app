import 'package:flutter/material.dart';
import 'package:sber_app2/resources/color_select.dart';
import 'package:sber_app2/resources/text_styles.dart';

class MyChip extends StatefulWidget {
  final String label;
  const MyChip({super.key, required this.label});

  @override
  State<MyChip> createState() => _MyChipState(text: label);
}

class _MyChipState extends State<MyChip> {
  late bool _selected;
  final String text;
  _MyChipState({required this.text});

  @override
  void initState() {
    _selected = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        side: BorderSide.none,
        backgroundColor: ColorSelect.chipColor,
        showCheckmark: false,
        label: Text(
          text,
          style: TextStyles.chipStyle,
        ),
        selected: _selected,
        onSelected: (newBoolValue) {
          setState(() {
            _selected = !_selected;
          });
        });
  }
}
