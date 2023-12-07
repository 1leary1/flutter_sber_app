import 'package:flutter/material.dart';
import 'package:sber_app2/color_select.dart';
import 'package:sber_app2/image_select.dart';
import 'package:sber_app2/text_styles.dart';

class MySliverAppbar extends StatelessWidget {
  const MySliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color.fromARGB(0, 0, 0, 0),
      pinned: true,
      floating: false,
      expandedHeight: 306,
      actions: [
        IconButton(
          icon: const Icon(Icons.exit_to_app),
          color: ColorSelect.mainGreen,
          onPressed: () {},
        ),
      ],
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.close),
        color: ColorSelect.mainGreen,
        onPressed: () {},
      ),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 110,
                height: 110,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                margin: const EdgeInsets.only(bottom: 30),
                child: const Image(image: ImageSelect.user),
              ),
              const Text(
                'Екатерина',
                style: TextStyles.userNameStyle,
              ),
            ],
          ),
        ),
      ),
      bottom: const TabBar(
        indicatorColor: ColorSelect.mainGreen,
        tabs: [
          Tab(
              child: Text(
            'Профиль',
            style: TextStyles.tabsStyle,
          )),
          Tab(
              child: Text(
            'Настройки',
            style: TextStyles.tabsStyle,
          )),
        ],
      ),
    );
  }
}
