import 'package:flutter/material.dart';
import 'package:my_profile/contant.dart';

import 'skill_set_items/skill_set_header.dart';
import 'skill_set_items/skill_set_items.dart';

class SkillSets extends StatelessWidget {
  const SkillSets({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.8,
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: kGoldColor, width: 5),
        ),
        color: Colors.black,
      ),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 1700),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: const [
                  SkillSetHeader(),
                  SizedBox(height: kDefaultPadding),
                  SkillSetItems(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
