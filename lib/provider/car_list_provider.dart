import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:deepsky_flutter/model/car.dart';

final activeCarListProvider = StateProvider<List<Car>>((ref) => const [
      Car(name: '新しいクルマ', type: 'ソニックスタート', connect: 'Connecting...'),
      Car(name: '新しいクルマ2', type: 'スマートガード', connect: 'Disconnected'),
    ]);

final disableCarListProvider = StateProvider<List<Car>>((ref) => const [
      Car(name: '新しいクルマ3', type: 'スマートガード', connect: 'disable'),
    ]);
