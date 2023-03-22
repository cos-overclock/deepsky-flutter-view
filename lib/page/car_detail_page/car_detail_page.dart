import 'package:deepsky_flutter/value/color/custom_color.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:deepsky_flutter/model/car.dart';
import 'package:deepsky_flutter/view/car_detail_view/car_state_component.dart';
import 'package:deepsky_flutter/provider/car_operate_list_provider.dart';
import 'package:deepsky_flutter/model/car_operate.dart';
import 'package:deepsky_flutter/view/car_detail_view/car_operate_component.dart';
import 'package:deepsky_flutter/provider/connect_state_provider.dart';

import 'package:deepsky_flutter/value/path.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Consumer(
              builder: (context, ref, child) => Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Switch(
                    value: ref.watch(connectStateProvider),
                    onChanged: (value) =>
                        ref.watch(connectStateProvider.notifier).state = value,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      ref.watch(connectStateProvider) ? '接続中' : '切断',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: ref.watch(connectStateProvider)
                                ? Theme.of(context).colorScheme.onSurface
                                : Theme.of(context)
                                    .extension<CustomColors>()!
                                    .statecolor!,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  car.imagePath == null
                      ? SvgPicture.asset(
                          defaultCarImagePath,
                          semanticsLabel: 'Default Car',
                          width: 250,
                          colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.onSurface,
                            BlendMode.srcIn,
                          ),
                        )
                      : Image.asset(
                          car.imagePath!,
                          fit: BoxFit.cover,
                          width: 250,
                          height: 140,
                        ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Consumer(
                      builder: (context, ref, child) => ref
                              .watch(connectStateProvider)
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                CarStateComponent(
                                  path: keyCylinderIconPath,
                                  on: true,
                                  text: ': OFF',
                                ),
                                CarStateComponent(
                                  path: doorOpenIconPath,
                                  on: false,
                                  text: ': ドア開',
                                ),
                              ],
                            )
                          : const SizedBox.shrink(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Consumer(
              builder: (context, ref, child) => ref.watch(connectStateProvider)
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: ReorderableListView.builder(
                        itemBuilder: (_, index) => CarOperateComponent(
                          ref.watch(carOperateLostProvider)[index],
                          key: Key('$index'),
                        ),
                        itemCount: ref.watch(carOperateLostProvider).length,
                        onReorder: (int oldIndex, int newIndex) => _onReorder(
                            ref.watch(carOperateLostProvider),
                            oldIndex,
                            newIndex),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
        ],
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
