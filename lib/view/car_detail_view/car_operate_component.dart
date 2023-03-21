import 'package:deepsky_flutter/model/car_operate.dart';
import 'package:flutter/material.dart';

import 'car_operate_button.dart';
import 'car_state_icon.dart';

class CarOperateComponent extends StatelessWidget {
  const CarOperateComponent(this.carOperate, {super.key});

  final CarOperate carOperate;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CarStateIcon(
              name: carOperate.name,
              on: carOperate.on,
              text: carOperate.stateText,
              path: carOperate.statePath,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CarOperateButton(
                  text: carOperate.onText,
                  name: carOperate.name,
                  path: carOperate.onPath,
                ),
                const VerticalDivider(thickness: 5),
                CarOperateButton(
                  text: carOperate.offText,
                  name: carOperate.name,
                  path: carOperate.offPath,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
