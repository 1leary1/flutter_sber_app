import 'package:flutter/material.dart';
import 'package:sber_app2/card_view.dart';
import 'package:sber_app2/image_select.dart';
import 'package:sber_app2/info_block_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          const SizedBox(height: 30),
          InfoBlock('У вас подключено', 'Подписки, автоплатежи и сервисы на которые вы подписались'),
          const SizedBox(height: 30),
          SberCard(ImageSelect.sberPrimeImg, 'СберПрайм', 'Платёж 9 июля', '199 ₽ в месяц'),
          const SizedBox(height: 46),
          InfoBlock('Тарифы и лимиты', 'Для операций в Сбербанк Онлайн'),
          // кнопки
          const SizedBox(height: 46),
          InfoBlock('Интересы', 'Мы подбираем истории и предложения по темам, которые вам нравятся'),
          //чипсы
        ],
      ),
    );
  }
}
