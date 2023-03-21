import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:deepsky_flutter/model/car_operate.dart';
import 'package:deepsky_flutter/value/path.dart';

final carOperateLostProvider = StateProvider<List<CarOperate>>((ref) => [
      const CarOperate(
        name: 'ガード',
        stateText: 'ガード ON',
        statePath: smartGuardIconPath,
        onText: 'ガード ON',
        onPath: smartGuardIconPath,
        offText: 'ガード Off',
        offPath: smartGuardIconPath,
        on: true,
      ),
      const CarOperate(
        name: 'ロック',
        stateText: 'ロック',
        statePath: lockIconPath,
        onText: 'ロック',
        onPath: lockIconPath,
        offText: 'アンロック',
        offPath: unlockIconPath,
        on: false,
      ),
    ]);
