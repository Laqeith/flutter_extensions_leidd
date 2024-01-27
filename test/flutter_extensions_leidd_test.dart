import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_extensions_leidd/flutter_extensions_leidd.dart';

void main() {
  group('IterableExtension.firstWhereOrNull tests', () {
    test('returns null when no element matches', () {
      expect([1, 2, 3].firstWhereOrNull((value) => value == 4), null);
    });

    test('returns the first matching element', () {
      expect([1, 2, 3].firstWhereOrNull((value) => value == 3), 3);
    });
  });
}
