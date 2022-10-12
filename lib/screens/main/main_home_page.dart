import 'package:flutter/material.dart';

import 'components/header.dart';
import 'components/my_description.dart';
import 'components/photo_profile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scrollController = ScrollController();
  double scrollPos = 0;

  @override
  void initState() {
    scrollController.addListener(() {
      setState(() {
        scrollPos = scrollController.offset;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            const Header(),
            SizedBox(
              width: size.width,
              height: size.height - 80,
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    child: SizedBox(
                      width: size.width / 2.1,
                      height: (size.height - 80),
                      child: PhotoProfile(scrollPos: scrollPos),
                    ),
                  ),
                  const Positioned(
                    left: 0,
                    child: MyDescription(),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.3,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
