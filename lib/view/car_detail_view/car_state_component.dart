import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:deepsky_flutter/value/color/custom_color.g.dart';

class CarStateComponent extends StatelessWidget {
  const CarStateComponent(
      {super.key, required this.on, required this.text, required this.path});

  final bool on;
  final String text;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            path,
            semanticsLabel: 'Car State Icon',
            width: 30,
            colorFilter: ColorFilter.mode(
              on
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).extension<CustomColors>()!.statecolor!,
              BlendMode.srcIn,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  color: on
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).extension<CustomColors>()!.statecolor,
                ),
              )),
        ],
      ),
    );
  }
}
