import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  /// Usage:
  /// ```
  /// import 'package:flutter_extensions_leidd/theme_extension.dart';
  ///
  /// final theme = context.theme;
  /// ```
  ThemeData get theme => Theme.of(this);
}
