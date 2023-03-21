import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'car_operate.freezed.dart';

@freezed
class CarOperate with _$CarOperate {
  const factory CarOperate({
    required String name,
    required String stateText,
    required String statePath,
    required String onText,
    required String onPath,
    required String offText,
    required String offPath,
    required bool on,
  }) = _CarOperate;
}
