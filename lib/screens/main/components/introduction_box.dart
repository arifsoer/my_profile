import 'package:flutter/material.dart';

class IntroductionBox extends StatelessWidget {
  const IntroductionBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: double.infinity,
              color: Colors.amber,
              child: const Text('1'),
            ),
          ),
          Expanded(
            flex: 2,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Stack(
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      child: Container(
                        height: constraints.maxHeight * 0.8,
                        width: constraints.maxHeight * 0.8,
                        decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      left: constraints.maxWidth * 0.25,
                      bottom: 0,
                      child: Container(
                        height: constraints.maxHeight * 0.4,
                        width: constraints.maxHeight * 0.4,
                        decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          shape: BoxShape.circle,
                        ),
                        child: const Text('value.scrollPosition'),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
