import 'package:flutter/material.dart';
import 'package:my_profile/contant.dart';
import 'package:my_profile/data/skills.dart';

class SkillSetItems extends StatelessWidget {
  const SkillSetItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: skilldatas.map((e) => Item(name: e.name)).toList(),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 1.5,
        vertical: kDefaultPadding * 0.7,
      ),
      margin: const EdgeInsets.all(kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(
        name,
        style: Theme.of(context).textTheme.headline5!.copyWith(
              color: kGoldColor,
            ),
      ),
    );
  }
}
