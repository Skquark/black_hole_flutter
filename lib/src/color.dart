import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Maximum value per channel of a [Color].
const _channelMax = (1 << 8) - 1;

extension FancyBrightness on Brightness {
  /// `true` for [Brightness.dark], `false` otherwise.
  bool get isDark => this == Brightness.dark;

  /// `true` for [Brightness.light], `false` otherwise.
  bool get isLight => this == Brightness.light;

  /// The opposite [Brightness] — [light] becomes [dark] and vice versa.
  Brightness get opposite => isDark ? Brightness.light : Brightness.dark;

  /// The [Color] representing this [Brightness]:
  /// - [Colors.black] for [Brightness.dark]
  /// - [Colors.white] for [Brightness.light]
  Color get color => isDark ? Colors.black : Colors.white;

  /// The [Color] contrasting this [Brightness]:
  /// - [Colors.white] for [Brightness.dark]
  /// - [Colors.black] for [Brightness.light]
  Color get contrastColor => opposite.color;

  /// The [SystemUiOverlayStyle] providing the most contrast on this brightness.
  SystemUiOverlayStyle get contrastSystemUiOverlayStyle =>
      isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark;
}

extension FancyColor on Color {
  /// Returns the estimated [Brightness] of this color based on its luminance.
  Brightness get estimatedBrightness =>
      ThemeData.estimateBrightnessForColor(this);

  /// `true` if the [estimatedBrightness] is [Brightness.dark], `false`
  /// otherwise.
  bool get isDark => estimatedBrightness.isDark;

  /// `true` if the [estimatedBrightness] is [Brightness.light], `false`
  /// otherwise.
  bool get isLight => estimatedBrightness.isLight;

  /// A pure [Color] contrasting with this one (i.e., [Colors.black] or
  /// [Colors.white]), depending on the [estimatedBrightness].
  Color get contrastColor => estimatedBrightness.contrastColor;

  /// The [SystemUiOverlayStyle] providing the most contrast on this color.
  SystemUiOverlayStyle get contrastSystemUiOverlayStyle =>
      estimatedBrightness.contrastSystemUiOverlayStyle;

  /// `true` if this color is fully opaque, i.e. has an [opacity] of `1.0`.
  bool get isOpaque => alpha == _channelMax;

  /// Shortcut for `Color.alphaBlend(color, background)`.
  Color alphaBlendOn(Color background) => Color.alphaBlend(this, background);

  /// Apply [opacity] in addition to the existing opacity by multiplying them.
  Color withAdditionalOpacity(double opacity) {
    assert(opacity != null && opacity >= 0.0 && opacity <= 1.0);
    return withOpacity(this.opacity * opacity);
  }

  /// Apply [alpha] in addition to the existing alpha by multiplying them.
  Color withAdditionalAlpha(int alpha) {
    assert(alpha != null);
    return withAlpha(this.alpha * alpha);
  }

  /// Shortcut for `HSLColor.fromColor(color)`.
  HSLColor get hsl => HSLColor.fromColor(this);

  /// Shortcut for `HSVColor.fromColor(color)`.
  HSVColor get hsv => HSVColor.fromColor(this);
}

extension FancyThemeData on ThemeData {
  /// `true` for [Brightness.dark], `false` otherwise.
  bool get isDark => brightness.isDark;

  /// `true` for [Brightness.light], `false` otherwise.
  bool get isLight => brightness.isLight;

  /// A pure [Color] contrasting with this theme's [Brightness], i.e.
  /// [Colors.black] or [Colors.white].
  Color get contrastColor => brightness.contrastColor;
}

extension RandomColor on Random {
  /// Generates a random [Color] with uniformly distributed red, green & blue
  /// values.
  ///
  /// You can optionally specify some components of the generated [Color]:
  /// - [red], [green] or [blue]
  /// - either [alpha] or [opacity]
  Color nextColor({
    int red,
    int green,
    int blue,
    int alpha,
    double opacity,
  }) {
    assert(
      alpha == null || opacity == null,
      'You cannot specify both alpha and opacity.',
    );

    final r = red ?? nextInt(_channelMax);
    final g = green ?? nextInt(_channelMax);
    final b = blue ?? nextInt(_channelMax);

    if (opacity != null) {
      return Color.fromRGBO(r, g, b, opacity);
    }
    return Color.fromARGB(alpha ?? nextInt(_channelMax), r, g, b);
  }

  /// Generates a random [HSLColor] with uniformly distributed hue, saturation &
  /// lightness values.
  ///
  /// You can optionally specify some components of the generated [HSLColor].
  HSLColor nextColorHsl({
    double hue,
    double saturation,
    double lightness,
    double alpha,
  }) {
    final h = hue ?? nextDouble() * 360;
    final s = saturation ?? nextDouble();
    final l = lightness ?? nextDouble();
    final a = alpha ?? nextDouble();

    return HSLColor.fromAHSL(a, h, s, l);
  }

  /// Generates a random [HSVColor] with uniformly distributed hue, saturation &
  /// value values.
  ///
  /// You can optionally specify some components of the generated [HSVColor].
  HSVColor nextColorHsv({
    double hue,
    double saturation,
    double value,
    double alpha,
  }) {
    final h = hue ?? nextDouble() * 360;
    final s = saturation ?? nextDouble();
    final v = value ?? nextDouble();
    final a = alpha ?? nextDouble();

    return HSVColor.fromAHSV(a, h, s, v);
  }
}

extension IntColorBlackHole on int {
  /// Interprets this [int] as an alpha value (0 – 255) and converts it to an
  /// opacity value (0 – 1).
  double get alphaToOpacity => this / _channelMax;
}

extension DoubleColorBlackHole on double {
  /// Interprets this [double] as an opacity value (0 – 1) and converts it to an
  /// alpha value (0 – 255).
  int get opacityToAlpha => this * _channelMax ~/ 1;
}
