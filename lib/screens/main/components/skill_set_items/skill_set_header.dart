import 'package:flutter/material.dart';

class SkillSetHeader extends StatelessWidget {
  const SkillSetHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'My Skill Set',
          style: TextStyle(color: Color(0xfffcc200)),
        ),
      ],
    );
  }
}
