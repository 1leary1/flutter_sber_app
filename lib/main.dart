import 'package:flutter/material.dart';
import 'package:sber_app2/screens/profile_screen.dart';
import 'package:sber_app2/widgets/my_sliver_appbar.dart';
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
      home:
      Scaffold(
      body: DefaultTabController(
        length: titles.length,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[const MySliverAppbar()];
          },
          body: const TabBarView(
            children: [
              ProfileScreen(),
              Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
