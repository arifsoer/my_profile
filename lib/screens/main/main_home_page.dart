import 'package:flutter/material.dart';
import 'package:my_profile/contant.dart';
import 'package:provider/provider.dart';
import 'package:my_profile/controllers/menu_controller.dart';

import 'components/menu_item.dart';
import 'components/my_description.dart';
import 'components/photo_profile.dart';
import 'components/skill_sets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scrollController = ScrollController();
  double scrollPos = 0;
  Color toolbarBackgroundColor = myProfileBackgroundColor;
  Color textToolbarColor = kDefaultAppbarTextColor;

  @override
  void initState() {
    scrollController.addListener(() {
      final offset = scrollController.offset;
      setState(() {
        scrollPos = offset;
        if (offset > 908) {
          textToolbarColor = kGoldColor;
          toolbarBackgroundColor = Colors.black;
        } else if (offset <= 900) {
          toolbarBackgroundColor = myProfileBackgroundColor;
          textToolbarColor = kDefaultAppbarTextColor;
        }
      });
    });
    super.initState();
  }

  void setScroll(double position) {
    scrollController.animateTo(
      position,
      duration: kDefaultDuration,
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menus = context.read<MenuController>().listMenu;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kAppBarHeight,
        backgroundColor: toolbarBackgroundColor,
        elevation: 0,
        actions: List.generate(
          menus.length,
          (index) => ManuItem(
            text: menus[index].title,
            isActive: index == context.watch<MenuController>().activeIndex,
            press: () {
              context.read<MenuController>().selectMenu(index);
              setScroll(menus[index].position);
            },
            textColor: textToolbarColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height - kAppBarHeight,
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    child: SizedBox(
                      width: size.width / 2.1,
                      height: (size.height - kAppBarHeight),
                      child: PhotoProfile(scrollPos: scrollPos),
                    ),
                  ),
                  const Positioned(
                    left: 0,
                    child: MyDescription(),
                  ),
                ],
              ),
            ),
            SkillSets(size: size)
          ],
        ),
      ),
    );
  }
}
