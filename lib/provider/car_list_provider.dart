import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:deepsky_flutter/model/car.dart';
import 'package:deepsky_flutter/value/path.dart';

final activeCarListProvider = StateProvider<List<Car>>((ref) => [
      const Car(
        name: '新しいクルマ',
        type: 'ソニックスタート',
        connect: 'Connecting...',
        imagePath: null,
      ),
      const Car(
        name: '新しいクルマ2',
        type: 'スマートガード',
        connect: 'Disconnected',
        imagePath: sampleCarImagePath,
      ),
    ]);
