import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_profile/controllers/menu_controller.dart';

import 'menu_item.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menus = context.read<MenuController>().listMenu;
    return Row(
      children: [
        const Spacer(),
        Row(
          children: List.generate(
            menus.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 30),
              child: ManuItem(
                text: menus[index],
                isActive: index == context.watch<MenuController>().activeIndex,
                press: () => context.read<MenuController>().selectMenu(index),
              ),
            ),
          ),
        ),
        const SizedBox(width: 50)
      ],
    );
  }
}
