import 'package:flutter/material.dart';

class CarStateIcon extends StatelessWidget {
  const CarStateIcon(
      {super.key, required this.on, required this.name, required this.text});

  final bool on;
  final String name;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          Icon(
            name == 'ガード'
                ? Icons.shield_outlined
                : name == 'ロック'
                    ? Icons.lock
                    : Icons.abc,
            color: on
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.error,
            size: 50,
          ),
          Text(
            text,
            style: TextStyle(
              color: on
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.error,
              fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
            ),
          ),
        ],
      ),
    );
  }
}
