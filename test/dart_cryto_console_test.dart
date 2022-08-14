import 'package:test/test.dart';
import 'package:dart_cryto_console/dart_crypto_console.dart' as app;

void main() {
  test('cryptDefaultKey', () {
    List<String> args = ['-t', 'Efraim'];
    expect(app.run(args), 0);
  });

  test('cryptDefaultKeyWithOptionExplicit', () {
    List<String> args = ['-t', 'Efraim', '-o', 'e'];
    expect(app.run(args), 0);
  });

  test('deCryptDefaultKey', () {
    List<String> args = ['-t', 'Dcz7NXQ6VF8=', '-o', 'd'];
    expect(app.run(args), 0);
  });

  test('crypPersonaltKey', () {
    List<String> args = ['-t', 'leaoJuda', '-k', 'Pr30:5CaPaDeusCoPura'];
    expect(app.run(args), 0);
  });

  test('deCryptPersonaltKey', () {
    List<String> args = [
      '-t',
      'JmYLptNNWj87Ws4JgAELaA==',
      '-o',
      'd',
      '-k',
      'Pr30:5CaPaDeusCoPura'
    ];
    expect(app.run(args), 0);
  });
}
