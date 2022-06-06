import 'package:flutter/material.dart';

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
            SizedBox(
              width: size.width,
              height: size.height,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 75,
                        vertical: 50,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 300),
                          Text(
                            'Arif Surahman',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          const SizedBox(height: 50),
                          Text(
                            'A technophile obsessed with state-of-the-art technologies',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(),
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
                                height: constraints.maxHeight * 0.6,
                                width: constraints.maxHeight * 0.6,
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
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 1,
            )
          ],
        ),
      ),
    );
  }
}
