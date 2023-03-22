import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:deepsky_flutter/value/color/custom_color.g.dart';

class CarStateIcon extends StatelessWidget {
  const CarStateIcon(
      {super.key,
      required this.on,
      required this.name,
      required this.text,
      required this.path});

  final bool on;
  final String name;
  final String text;
  final String path;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          SvgPicture.asset(
            path,
            semanticsLabel: 'State Icon',
            width: 50,
            colorFilter: ColorFilter.mode(
              on
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).extension<CustomColors>()!.statecolor!,
              BlendMode.srcIn,
            ),
          ),
          AutoSizeText(
            text,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: on
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).extension<CustomColors>()!.statecolor,
                ),
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
