import 'package:sber_app2/models/card_model.dart';
import 'package:sber_app2/models/option_model.dart';
import 'package:sber_app2/resources/image_select.dart';
import 'package:sber_app2/widgets/card_widget.dart';
import 'package:sber_app2/widgets/info_block_widget.dart';
import 'package:sber_app2/widgets/options_widget.dart';

class TextSelect {
  //tab bar
  static const String username = "Екатерина";
  static const String titleProfile = "Профиль";
  static const String titleSettings = "Настройки";

  //profile screen
  static final List<InfoBlock> infoBlocks = [
    InfoBlock('У вас подключено',
        'Подписки, автоплатежи и сервисы на которые вы подписались'),
    InfoBlock('Тарифы и лимиты', 'Для операций в Сбербанк Онлайн'),
    InfoBlock('Интересы',
        'Мы подбираем истории и предложения по темам, которые вам нравятся'),
  ];

  static final List<SberCard> cards = [
    SberCard(
      model: const CardModel(
          icon: ImageSelect.sberPrimeImg,
          header: 'СберПрайм',
          date: 'Платёж 9 июля',
          costs: '199 ₽ в месяц'),
    ),
    SberCard(
      model: const CardModel(
          icon: ImageSelect.sberPrimeImg,
          header: 'Перевод',
          date: 'Автопродление 21 августа',
          costs: '199 ₽ в месяц'),
    ),
  ];

  static final List<Option> options = [
    Option(
        model: OptionModel(
            mainImg: ImageSelect.speedometrImg,
            optionName: 'Изменить суточный лимит',
            optionDescription: 'На платежи и переводы')),
    Option(
      model: OptionModel(
          mainImg: ImageSelect.arrowForwardBackImg,
          optionName: 'Переводы без комиссии',
          optionDescription: 'Показать остаток в этом месяце'),
    ),
    Option(
      model: OptionModel(
          mainImg: ImageSelect.percentImg,
          optionName: 'Информация о тарифах\nи лимитах',
          optionDescription: ''),
    ),
  ];

  static final List<String> chipsText = [
    "Еда",
    "Саморазвитие",
    "Технологии",
    "Дом",
    "Досуг",
    "Забота о себе",
    "Наука"
  ];
}
