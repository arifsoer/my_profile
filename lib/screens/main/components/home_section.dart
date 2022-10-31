import 'package:flutter/material.dart';
import 'package:my_profile/contant.dart';
import 'package:my_profile/screens/main/components/home_sections/my_description.dart';

import 'home_sections/photo_profile.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height - kAppBarHeight,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: SizedBox(
              width: size.width / 2.1,
              height: (size.height - kAppBarHeight),
              child: const PhotoProfile(),
            ),
          ),
          const Positioned(
            left: 0,
            child: MyDescription(),
          ),
        ],
      ),
    );
  }
}
