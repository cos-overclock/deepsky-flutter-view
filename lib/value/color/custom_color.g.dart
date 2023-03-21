import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

const statecolor = Color(0xFFE50066);

CustomColors lightCustomColors = const CustomColors(
  sourceStatecolor: Color(0xFFE50066),
  statecolor: Color(0xFFBC0052),
  onStatecolor: Color(0xFFFFFFFF),
  statecolorContainer: Color(0xFFFFD9DF),
  onStatecolorContainer: Color(0xFF3F0017),
);

CustomColors darkCustomColors = const CustomColors(
  sourceStatecolor: Color(0xFFE50066),
  statecolor: Color(0xFFFFB1C1),
  onStatecolor: Color(0xFF660029),
  statecolorContainer: Color(0xFF90003D),
  onStatecolorContainer: Color(0xFFFFD9DF),
);

/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceStatecolor,
    required this.statecolor,
    required this.onStatecolor,
    required this.statecolorContainer,
    required this.onStatecolorContainer,
  });

  final Color? sourceStatecolor;
  final Color? statecolor;
  final Color? onStatecolor;
  final Color? statecolorContainer;
  final Color? onStatecolorContainer;

  @override
  CustomColors copyWith({
    Color? sourceStatecolor,
    Color? statecolor,
    Color? onStatecolor,
    Color? statecolorContainer,
    Color? onStatecolorContainer,
  }) {
    return CustomColors(
      sourceStatecolor: sourceStatecolor ?? this.sourceStatecolor,
      statecolor: statecolor ?? this.statecolor,
      onStatecolor: onStatecolor ?? this.onStatecolor,
      statecolorContainer: statecolorContainer ?? this.statecolorContainer,
      onStatecolorContainer:
          onStatecolorContainer ?? this.onStatecolorContainer,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourceStatecolor: Color.lerp(sourceStatecolor, other.sourceStatecolor, t),
      statecolor: Color.lerp(statecolor, other.statecolor, t),
      onStatecolor: Color.lerp(onStatecolor, other.onStatecolor, t),
      statecolorContainer:
          Color.lerp(statecolorContainer, other.statecolorContainer, t),
      onStatecolorContainer:
          Color.lerp(onStatecolorContainer, other.onStatecolorContainer, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///   * [CustomColors.sourceStatecolor]
  ///   * [CustomColors.statecolor]
  ///   * [CustomColors.onStatecolor]
  ///   * [CustomColors.statecolorContainer]
  ///   * [CustomColors.onStatecolorContainer]
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(
      sourceStatecolor: sourceStatecolor!.harmonizeWith(dynamic.primary),
      statecolor: statecolor!.harmonizeWith(dynamic.primary),
      onStatecolor: onStatecolor!.harmonizeWith(dynamic.primary),
      statecolorContainer: statecolorContainer!.harmonizeWith(dynamic.primary),
      onStatecolorContainer:
          onStatecolorContainer!.harmonizeWith(dynamic.primary),
    );
  }
}
