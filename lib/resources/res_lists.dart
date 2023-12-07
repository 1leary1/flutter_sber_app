import 'package:sber_app2/resources/image_select.dart';
import 'package:sber_app2/widgets/card_widget.dart';
import 'package:sber_app2/widgets/options_widget.dart';

class ResourcesLists {
  static final List<SberCard> cards = <SberCard>[
    SberCard(ImageSelect.sberPrimeImg, 'СберПрайм', 'Платёж 9 июля',
        '199 ₽ в месяц'),
    SberCard(ImageSelect.percentFill, 'Переводы', 'Автопродление 21 августа',
        '199 ₽ в месяц')
  ];

  static final List<Option> options = <Option>[
    Option(ImageSelect.speedometrImg, 'Изменить суточный лимит',
        'На платежи и переводы'),
    Option(ImageSelect.arrowForwardBackImg, 'Переводы без комиссии',
        'Показать остаток в этом месяце'),
    Option(ImageSelect.percentImg, 'Информация о тарифах и лимитах', ''),
  ];

  static final List<String> chipsText = <String>[
    "Еда",
    "Саморазвитие",
    "Технологии",
    "Дом",
    "Досуг",
    "Забота о себе",
    "Наука"
  ];

  static final List<String> titles = <String>[
    'Профиль',
    'Настройки',
  ];
}
