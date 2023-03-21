import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarOperateButton extends StatelessWidget {
  const CarOperateButton(
      {super.key, required this.text, required this.name, required this.path});

  final String text;
  final String name;
  final String path;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), //角の丸み
        ),
      ),
      onPressed: () => {},
      child: SizedBox(
        height: 80,
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              path,
              semanticsLabel: 'State Icon',
              width: 30,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
