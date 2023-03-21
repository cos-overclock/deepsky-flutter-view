import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:deepsky_flutter/model/car.dart';
import 'package:deepsky_flutter/provider/car_list_provider.dart';

import 'car_card.dart';

class CarListView extends ConsumerWidget {
  const CarListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeCarList = ref.watch(activeCarListProvider);
    final disableCarList = ref.watch(disableCarListProvider);

    return ListView(children: [
      ReorderableListView.builder(
        itemBuilder: (context, index) => CarCard(
          activeCarList[index],
          key: Key('$index'),
        ),
        itemCount: activeCarList.length,
        onReorder: (oldIndex, newIndex) =>
            _onReorder(activeCarList, oldIndex, newIndex),
        proxyDecorator: (widget, _, __) => Opacity(opacity: 0.5, child: widget),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
      ),
      const Divider(indent: 10, endIndent: 10),
      ReorderableListView.builder(
        itemBuilder: (context, index) => CarCard(
          disableCarList[index],
          key: Key('$index'),
        ),
        itemCount: disableCarList.length,
        onReorder: (oldIndex, newIndex) =>
            _onReorder(disableCarList, oldIndex, newIndex),
        proxyDecorator: (widget, _, __) => Opacity(opacity: 0.5, child: widget),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
      ),
    ]);
  }

  void _onReorder(List<Car> items, int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    items.insert(newIndex, items.removeAt(oldIndex));
  }
}
