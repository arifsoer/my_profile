import 'package:flutter/material.dart';

class ManuItem extends StatelessWidget {
  const ManuItem({
    Key? key,
    required this.text,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  final String text;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: isActive
                ? const BorderSide(
                    color: Colors.black,
                    width: 3,
                  )
                : BorderSide.none,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
