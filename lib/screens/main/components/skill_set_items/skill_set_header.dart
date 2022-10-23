import 'package:flutter/material.dart';
import 'package:my_profile/contant.dart';

class SkillSetHeader extends StatelessWidget {
  const SkillSetHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: kGoldColor,
                width: 3,
              ),
            ),
          ),
          child: Text(
            'My Skill Set',
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: kGoldColor,
                ),
          ),
        ),
      ],
    );
  }
}
