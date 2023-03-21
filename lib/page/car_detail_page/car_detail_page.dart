import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:deepsky_flutter/model/car.dart';
import 'package:deepsky_flutter/view/car_detail_view/car_state_component.dart';
import 'package:deepsky_flutter/provider/car_operate_list_provider.dart';
import 'package:deepsky_flutter/model/car_operate.dart';
import 'package:deepsky_flutter/view/car_detail_view/car_operate_component.dart';

final switchStateProvider = StateProvider<bool>((ref) => false);

class CarDetailPage extends StatelessWidget {
  const CarDetailPage(this.car, {super.key});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(car.name),
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Consumer(
              builder: (context, ref, child) => Switch(
                value: ref.watch(switchStateProvider),
                onChanged: (value) =>
                    ref.watch(switchStateProvider.notifier).state = value,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.directions_car, size: 150),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CarStateComponent(
                        icon: Icons.key,
                        on: true,
                        text: ': OFF',
                      ),
                      CarStateComponent(
                        icon: Icons.door_sliding_outlined,
                        on: false,
                        text: ': ドア開',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Consumer(
                builder: (context, ref, child) => ReorderableListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) => CarOperateComponent(
                    ref.watch(carOperateLostProvider)[index],
                    key: Key('$index'),
                  ),
                  itemCount: ref.watch(carOperateLostProvider).length,
                  onReorder: (int oldIndex, int newIndex) => _onReorder(
                      ref.watch(carOperateLostProvider), oldIndex, newIndex),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onReorder(List<CarOperate> items, int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    items.insert(newIndex, items.removeAt(oldIndex));
  }
}
