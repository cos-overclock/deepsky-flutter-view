import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'car.freezed.dart';

@freezed
class Car with _$Car {
  const factory Car({
    required String name,
    required String type,
    required String connect,
    required String? imagePath,
  }) = _Car;
}
