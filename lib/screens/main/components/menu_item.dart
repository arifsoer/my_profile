import 'package:flutter/material.dart';
import 'package:my_profile/contant.dart';

class ManuItem extends StatefulWidget {
  const ManuItem({
    Key? key,
    required this.text,
    required this.isActive,
    required this.press,
    this.textColor,
  }) : super(key: key);

  final String text;
  final bool isActive;
  final Color? textColor;
  final VoidCallback press;

  @override
  State<ManuItem> createState() => _ManuItemState();
}

class _ManuItemState extends State<ManuItem> {
  bool _isHover = false;

  Color _borderColor() {
    final defaultColor = widget.textColor ?? Colors.black;
    if (_isHover && !widget.isActive) {
      return defaultColor.withOpacity(0.4);
    } else if (widget.isActive) {
      return defaultColor;
    }
    return Colors.transparent;
  }

  Color _textColor() {
    return widget.textColor ?? Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding * 2,
      ),
      child: InkWell(
        onTap: widget.press,
        onHover: (value) => {
          setState(() {
            _isHover = value;
          })
        },
        child: AnimatedContainer(
          duration: kDefaultDuration,
          padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: _borderColor(),
                width: 3,
              ),
            ),
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: widget.isActive ? FontWeight.bold : FontWeight.normal,
              color: _textColor(),
            ),
          ),
        ),
      ),
    );
  }
}
