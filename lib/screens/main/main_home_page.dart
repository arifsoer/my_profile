import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_profile/contant.dart';
import 'package:my_profile/controllers/menu_controller.dart';
import 'package:my_profile/screens/main/components/section_container.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'components/home_section.dart';
import 'components/menu_item.dart';
import 'components/skill_set_items.dart';
import 'components/tech_stack_items.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuController = Get.put(MenuController());
    final menus = menuController.listMenu;

    const contents = <Widget>[
      HomeSection(),
      SectionContainer(
        title: 'My Skill Set',
        content: SkillSetItems(),
        isWithTopBar: true,
      ),
      SectionContainer(
        title: 'Tech Stack',
        content: TechStackItem(),
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Container(
              height: kAppBarHeight,
              color: menuController.toolbarBackgroundColor,
              child: Row(
                children: [
                  const Spacer(),
                  ...List.generate(
                    menus.length,
                    (index) => ManuItem(
                      text: menus[index].title,
                      isActive: index == menuController.activeIndex,
                      press: () => menuController.showContent(index),
                      textColor: menuController.textToolbarColor,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ScrollablePositionedList.builder(
              itemScrollController: menuController.itemScrollController,
              itemPositionsListener: menuController.itemPositionListener,
              itemCount: contents.length,
              itemBuilder: (context, index) => contents[index],
            ),
          ),
        ],
      ),
    );
  }
}
