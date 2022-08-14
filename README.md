# DartCryptoConsole

<p align="center">
  <img src="docs/imgs/console.png" width="250px" />
</p>

<div align="center">

[![](https://img.shields.io/badge/Dart-000000?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/) [![](https://img.shields.io/badge/Linux-FA5C5C?style=for-the-badge&logo=linux&logoColor=white)](https://www.linux.org/) [![](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)](https://www.microsoft.com/pt-br/windows) [![](https://img.shields.io/badge/PRS-Welcome-239120?style=for-the-badge)](http://makeapullrequest.com) [![](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](LICENSE)

</div>

## About

DartCrytoConsole is console application that allows you to encrypt and decrypt texts in a simple way.

![](docs/imgs/run_win_cmd_app.png)

For downloads and more information visit the [Wiki](https://github.com/tglima/DartCrytoConsole/wiki).


## Requirements to build desktop version
* [Dart SDK](https://dart.dev/get-dart) 2.17.x
* [stagehand](https://pub.dev/documentation/stagehand/latest/stagehand/stagehand-library.html)

### Active stagehand

```dart
pub global activate stagehand
```

Export path
```sh
export PATH="$PATH":"$HOME/.pub-cache/bin"
```

## Compile

```dart
dart pub get
dart compile exe bin/main.dart -o bin/dart_crypto_console
```

## Examples

An example encrypt text using file compiled

```
dart_crypto_console -t "Efraim" -o e
```

### More examples
* [For Linux](docs/examples/linux_console.txt)
* [For Windows](docs/examples/win_console.txt)


## License
The source code of this application is under [MIT License](LICENSE), everything else must be considered registered content of their respective owners and developers.
