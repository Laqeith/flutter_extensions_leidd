<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Flutter extensions

## Getting started

```code
dependencies:
  flutter_extensions_leidd:
    git:
      url: https://github.com/Laqeith/flutter_extensions_leidd
      ref: master
```

## Usage

If do not see latest extensions:

```dart
flutter pub upgrade
```

Theme extension usage:

```dart
final theme = context.theme;
```

Iterable extension usage:

```dart
[1, 2, 3].firstWhereOrNull((value) => value == 4)
```
