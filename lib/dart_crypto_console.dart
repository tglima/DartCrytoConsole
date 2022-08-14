import 'dart:io';
import 'package:args/args.dart';
import 'package:tglima_dart_framework/tglima_dart_framework.dart';

int run(List<String> arguments) {
  exitCode = 1;

  final parser = ArgParser()
    ..addOption('option',
        abbr: 'o', allowed: ['e', 'd', 'E', 'D'], defaultsTo: 'e')
    ..addOption('t', abbr: 't', defaultsTo: '')
    ..addOption('key', abbr: 'k', defaultsTo: '');

  final ArgResults argResults = parser.parse(arguments);

  if (!_validateArguments(argResults)) return exitCode;

  CryptoUtil cryptoUtil = CryptoUtil();

  if (argResults['key'].toString().trim().isNotEmpty) {
    cryptoUtil = CryptoUtil(argResults['key'].toString());
  }

  if (!cryptoUtil.validateKeyCrypt()) {
    print(ConstantUtil.invalidKeyCrypt);
    return exitCode;
  }

  ResultDTO resultDTO = ResultDTO(false, ConstantUtil.msgError);

  switch (argResults['option'].toString().trim().toLowerCase()) {
    case 'e':
      resultDTO = cryptoUtil.txtEncrypt(argResults['t']);
      break;
    case 'd':
      resultDTO = cryptoUtil.txtDecrypt(argResults['t']);
      break;
    default:
      exitCode = 1;
  }

  if (!resultDTO.hasSuccess) return exitCode;

  print(resultDTO.object.toString());
  exitCode = 0;
  return exitCode;
}

bool _validateArguments(ArgResults argResults) {
  if (argResults['t'].toString().trim().isEmpty) {
    print('The text is invalid!');
    return false;
  }

  if (argResults['key'].toString().trim().isNotEmpty &&
      argResults['key'].toString().trim().length != 20) {
    print('The key is invalid!');
    return false;
  }

  return true;
}
