import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_profile/controllers/menu_controller.dart';

class PhotoProfile extends StatelessWidget {
  const PhotoProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MenuController menuController = Get.find();
    // final scrollPos = ;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Obx(
          () => Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: (1 - menuController.scrollPosHome) * 100 - 150,
                child: Container(
                  height: constraints.maxHeight * 0.9,
                  width: constraints.maxHeight * 0.9,
                  decoration: const BoxDecoration(
                    color: Colors.lightBlue,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                bottom: (1 - menuController.scrollPosHome) * 100 - 200,
                child: Container(
                  height: constraints.maxHeight * 0.7,
                  width: constraints.maxHeight * 0.7,
                  decoration: const BoxDecoration(
                    color: Colors.blueGrey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                bottom: (1 - menuController.scrollPosHome) * 100,
                child: Image.asset(
                  'assets/images/arifsurahman-removebg-preview.png',
                  width: 750,
                  height: 750,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
