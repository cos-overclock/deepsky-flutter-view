import 'package:flutter/material.dart';

class CarOperateButton extends StatelessWidget {
  const CarOperateButton({super.key, required this.text, required this.name});

  final String text;
  final String name;

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
              const Icon(Icons.shield_outlined, size: 30),
              Text(text),
            ],
          ),
        ));
  }
}
