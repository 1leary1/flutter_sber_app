import 'package:flutter/material.dart';
import 'package:sber_app2/resources/res_lists.dart';
import 'package:sber_app2/screens/profile_screen.dart';
import 'package:sber_app2/screens/settings_screen.dart';
import 'package:sber_app2/widgets/my_sliver_appbar_widget.dart';

void main() {
  runApp(const MainApp());
}



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DefaultTabController(
          length: ResourcesLists.titles.length,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[const MySliverAppbar()];
            },
            body: const TabBarView(
              children: [
                ProfileScreen(),
                SettingsScreen()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
