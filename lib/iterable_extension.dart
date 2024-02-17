extension IterableExtension<T> on Iterable<T> {
  /// The first element satisfying [test], or `null` if there are none.
  /// ```
  /// import 'package:flutter_extensions_leidd/iterable_extension.dart';
  ///
  /// [1, 2, 3].firstWhereOrNull((value) => value == 4)
  /// ```
  T? firstWhereOrNull(bool Function(T element) test) {
    for (var element in this) {
      if (test(element)) return element;
    }
    return null;
  }

  /// Generic sum method for any numeric property
  /// ```
  /// import 'package:flutter_extensions_leidd/iterable_extension.dart';
  ///
  /// final _holdings = [
  ///     Stock(totalReturn: 5),
  ///     Stock(totalReturn: 10),
  ///     Stock(totalReturn: -15),
  /// ];
  ///
  /// final _stocksTotalReturn = _holdings.sum((stock) => stock.totalReturn);
  /// ```
  /// Or if totalReturn is optional:
  /// ```
  /// final _stocksTotalReturn = _holdings.sum((stock) => stock.totalReturn ?? 0);
  /// ```
  /// Cast:
  /// ```
  /// final _stocksTotalReturn = _holdings.sum((stock) => stock.totalReturn ?? 0).toDouble();
  /// ```
  num sum(num Function(T) selector) {
    return fold(
      0,
      (previousValue, element) => previousValue + selector(element),
    );
  }
}
