import 'package:flutter/material.dart';

class CarStateComponent extends StatelessWidget {
  const CarStateComponent(
      {super.key, required this.on, required this.text, required this.icon});

  final bool on;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 30,
            color: on
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.error,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  color: on
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.error,
                ),
              )),
        ],
      ),
    );
  }
}
