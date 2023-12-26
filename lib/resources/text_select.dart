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
    SberCard(ImageSelect.sberPrimeImg, 'СберПрайм', 'Платёж 9 июля',
        '199 ₽ в месяц'),
    SberCard(ImageSelect.percentFill, 'Переводы', 'Автопродление 21 августа',
        '199 ₽ в месяц')
  ];

  static final List<Option> options = [
    Option(ImageSelect.speedometrImg, 'Изменить суточный лимит',
        'На платежи и переводы'),
    Option(ImageSelect.arrowForwardBackImg, 'Переводы без комиссии',
        'Показать остаток в этом месяце'),
    Option(ImageSelect.percentImg, 'Информация о тарифах\nи лимитах', ''),
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
