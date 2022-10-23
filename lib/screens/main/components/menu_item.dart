import 'package:flutter/material.dart';

class ManuItem extends StatefulWidget {
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
  State<ManuItem> createState() => _ManuItemState();
}

class _ManuItemState extends State<ManuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (_isHover && !widget.isActive) {
      return Colors.black.withOpacity(0.4);
    } else if (widget.isActive) {
      return Colors.black;
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) => {
        setState(() {
          _isHover = value;
        })
      },
      child: Container(
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
          ),
        ),
      ),
    );
  }
}
