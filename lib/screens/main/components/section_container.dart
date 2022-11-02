import 'package:flutter/material.dart';
import 'package:my_profile/contant.dart';

class SectionContainer extends StatelessWidget {
  const SectionContainer({
    Key? key,
    required this.title,
    this.backgroundColor = kBlackColor,
    this.titleColor = kGoldColor,
    required this.content,
    this.maxWidth = 1700,
    this.isWithTopBar = false,
  }) : super(key: key);

  final String title;
  final Color? backgroundColor;
  final Color? titleColor;
  final Widget content;
  final double maxWidth;
  final bool isWithTopBar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: isWithTopBar ? kGoldColor : Colors.transparent,
            width: 5,
          ),
        ),
        color: kBlackColor,
      ),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: maxWidth),
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: titleColor!,
                              width: 3,
                            ),
                          ),
                        ),
                        child: Text(
                          title,
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(color: titleColor!),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: kDefaultPadding),
                  content
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
