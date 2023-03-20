import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:deepsky_flutter/model/car_operate.dart';

final carOperateLostProvider = StateProvider<List<CarOperate>>((ref) => [
      const CarOperate(
        name: 'ガード',
        stateText: 'ガード ON',
        onText: 'ガード ON',
        offText: 'ガード Off',
        on: true,
      ),
      const CarOperate(
        name: 'ロック',
        stateText: 'ロック',
        onText: 'ロック',
        offText: 'アンロック',
        on: false,
      ),
    ]);
