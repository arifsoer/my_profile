import 'package:flutter/material.dart';
import 'package:my_profile/contant.dart';

import 'skill_set_items/skill_set_header.dart';
import 'skill_set_items/skill_set_items.dart';
import 'skill_set_items/tech_stack_items.dart';

class SkillSets extends StatelessWidget {
  const SkillSets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  SkillSetHeader(title: 'My Skill Set'),
                  SizedBox(height: kDefaultPadding),
                  SkillSetItems(),
                  SizedBox(height: kDefaultPadding * 2),
                  SkillSetHeader(title: 'Tech Stack'),
                  SizedBox(height: kDefaultPadding),
                  TechStackItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
