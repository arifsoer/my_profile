import 'package:flutter/material.dart';

class MyPhoto extends StatefulWidget {
  const MyPhoto({Key? key}) : super(key: key);

  @override
  State<MyPhoto> createState() => _MyPhotoState();
}

class _MyPhotoState extends State<MyPhoto> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
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
    );
  }
}
