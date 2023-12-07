import 'package:flutter/material.dart';
import 'package:sber_app2/widgets/card_view.dart';
import 'package:sber_app2/image_select.dart';
import 'package:sber_app2/widgets/chips_widget.dart';
import 'package:sber_app2/widgets/info_block_view.dart';
import 'package:sber_app2/widgets/options_view.dart';

final List<SberCard> cards = <SberCard>[
  SberCard(
      ImageSelect.sberPrimeImg, 'СберПрайм', 'Платёж 9 июля', '199 ₽ в месяц'),
  SberCard(ImageSelect.percentFill, 'Переводы', 'Автопродление 21 августа',
      '199 ₽ в месяц'),
];

final List<Option> options = <Option>[
  Option(ImageSelect.speedometrImg, 'Изменить суточный лимит',
      'На платежи и переводы'),
  Option(ImageSelect.arrowForwardBackImg, 'Переводы без комиссии',
      'Показать остаток в этом месяце'),
  Option(ImageSelect.percentImg, 'Информация о тарифах и лимитах', ''),
];

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: ListView(
        children: [
          const SizedBox(height: 30),
          InfoBlock('У вас подключено',
              'Подписки, автоплатежи и сервисы на которые вы подписались'),

          Column(children: [
            const SizedBox(height: 30),
            SizedBox(
              height: 130,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                itemCount: cards.length,
                itemBuilder: (BuildContext context, int index) {
                  return cards[index];
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  width: 8,
                ),
              ),
            ),
            const SizedBox(height: 46),
          ]),

          InfoBlock('Тарифы и лимиты', 'Для операций в Сбербанк Онлайн'),

          const SizedBox(height: 12),
          SizedBox(
            height: 200,
            child: Flexible(
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: options.length,
                  itemBuilder: (BuildContext context, int index) {
                    return options[index];
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider()),
            ), //неправильне размеры, нужно починить
          ),
          const SizedBox(height: 46),
          InfoBlock('Интересы',
              'Мы подбираем истории и предложения по темам, которые вам нравятся'),
          const ActionChoiceExample()
        ],
      ),
    );
  }
}
