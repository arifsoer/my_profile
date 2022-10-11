import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  const PhotoProfile({
    Key? key,
    required this.scrollPos,
  }) : super(key: key);

  final double scrollPos;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Stack(
          alignment: Alignment.center,
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              bottom: scrollPos / 5 - 150,
              child: Container(
                height: constraints.maxHeight * 0.9,
                width: constraints.maxHeight * 0.9,
                decoration: const BoxDecoration(
                  color: Colors.lightBlue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              bottom: scrollPos / 5 - 200,
              child: Container(
                height: constraints.maxHeight * 0.7,
                width: constraints.maxHeight * 0.7,
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 150),
              bottom: scrollPos / 4,
              child: Image.asset(
                'assets/images/arifsurahman-removebg-preview.png',
                width: 750,
                height: 750,
              ),
            ),
          ],
        );
      },
    );
  }
}
