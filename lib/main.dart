import 'package:flutter/material.dart';
import 'package:sber_app2/profile_screen.dart';
import 'color_select.dart';
import 'text_styles.dart';

void main() {
  runApp(const MainApp());
}

List<String> titles = <String>[
  'Профиль',
  'Настройки',
];

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: titles.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: const TabBar(
              indicatorColor: ColorSelect.mainGreen,
              tabs: [
                Tab(child: Text('Профиль',
                  style: TextStyles.tabsStyle,)),
                Tab(child: Text('Настройки',
                  style: TextStyles.tabsStyle,)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ProfileScreen(),
              Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
    );
  }
}

