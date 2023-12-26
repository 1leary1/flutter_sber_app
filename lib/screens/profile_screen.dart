import 'package:flutter/material.dart';
import 'package:sber_app2/resources/text_select.dart';
import 'package:sber_app2/widgets/chip_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: ListView(
        clipBehavior: Clip.none,
        children: [
          const SizedBox(height: 30),

          //cards block
          TextSelect.infoBlocks[0],
          const SizedBox(height: 30),
          SizedBox(
            height: 130,
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              shrinkWrap: false,
              itemCount: TextSelect.cards.length,
              itemBuilder: (BuildContext context, int index) {
                return TextSelect.cards[index];
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: 8,
              ),
            ),
          ),
          const SizedBox(height: 46),

          //options block
          TextSelect.infoBlocks[1],
          const SizedBox(height: 12),
          SizedBox(
            height: 200,
            child: Flexible(
              child: ListView.separated(
                  clipBehavior: Clip.none,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: TextSelect.options.length,
                  itemBuilder: (BuildContext context, int index) {
                    return TextSelect.options[index];
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Padding(
                        padding: EdgeInsets.only(left: 48),
                        child: Divider(),
                      )),
            ),
          ),
          const SizedBox(height: 46),

          //info block of interests and chips
          TextSelect.infoBlocks[2],
          const SizedBox(
            height: 16,
          ),
          Wrap(
              spacing: 8,
              children: List.generate(TextSelect.chipsText.length,
                  (index) => MyChip(label: TextSelect.chipsText[index]))),
        ],
      ),
    );
  }
}
