import 'package:flutter/material.dart';
import 'package:sber_app2/resources/res_lists.dart';
import 'package:sber_app2/widgets/chip_widget.dart';
import 'package:sber_app2/widgets/info_block_widget.dart';

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
          InfoBlock('У вас подключено',
              'Подписки, автоплатежи и сервисы на которые вы подписались'),
          const SizedBox(height: 30),
          SizedBox(
            height: 130,
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              shrinkWrap: false,
              itemCount: ResourcesLists.cards.length,
              itemBuilder: (BuildContext context, int index) {
                return ResourcesLists.cards[index];
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: 8,
              ),
            ),
          ),
          const SizedBox(height: 46),

          //options block
          InfoBlock('Тарифы и лимиты', 'Для операций в Сбербанк Онлайн'),
          const SizedBox(height: 12),
          SizedBox(
            height: 200,
            child: Flexible(
              child: ListView.separated(
                  clipBehavior: Clip.none,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: ResourcesLists.options.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ResourcesLists.options[index];
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Padding(padding: EdgeInsets.only(left: 48), child: Divider(),)),
            ),
          ),
          const SizedBox(height: 46),

          //info block of interests and chips
          InfoBlock('Интересы',
              'Мы подбираем истории и предложения по темам, которые вам нравятся'),
          const SizedBox(
            height: 16,
          ),
          Wrap(
              spacing: 8,
              children: List.generate(
                  ResourcesLists.chipsText.length, (index) => MyChip(label: ResourcesLists.chipsText[index]))),
        ],
      ),
    );
  }
}
