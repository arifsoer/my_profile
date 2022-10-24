import 'package:flutter/material.dart';
import 'package:my_profile/contant.dart';
import 'package:my_profile/data/tech_stacks.dart';
import 'package:my_profile/models/tech_stack.dart';

class TechStackItem extends StatelessWidget {
  const TechStackItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceAround,
      children: List.generate(
        techStackDatas.length,
        (index) => Item(techStack: techStackDatas[index]),
      ),
    );
  }
}

class Item extends StatefulWidget {
  const Item({
    Key? key,
    required this.techStack,
  }) : super(key: key);

  final TechStack techStack;

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      onHover: (value) => {
        setState(() {
          _isHover = value;
        })
      },
      child: Container(
        margin: const EdgeInsets.all(kDefaultPadding),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Image.asset(
                    widget.techStack.logoUrl!,
                    height: 140,
                  ),
                  const SizedBox(height: kDefaultPadding / 2),
                  Text(
                    widget.techStack.name,
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: kGoldColor),
                  )
                ],
              ),
            ),
            Positioned.fill(
              child: AnimatedOpacity(
                opacity: _isHover ? 1 : 0,
                duration: const Duration(milliseconds: 300),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kDefaultPadding),
                    color: kGoldColor.withOpacity(0.8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Exp : ${widget.techStack.exp} year${widget.techStack.exp > 1 ? 's' : ''}',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        'Since : ${widget.techStack.yearBegin}',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
