import 'package:flutter/material.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 75,
        vertical: 50,
      ),
      color: Colors.transparent,
      child: Column(
        children: [
          const SizedBox(height: 270),
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
    );
  }
}
