#An example encrypt text
dart run dart_crypto_console.dart -t 'Efraim' -o e                              ✔ 

#An example decrypt text
dart run dart_crypto_console.dart -t 'Dcz7NXQ6VF8=' -o d

#An example encrypt text with personal key
dart run dart_crypto_console.dart -t 'leaoJuda' -o e -k Pr30:5CaPaDeusCoPura                               ✔ 

#An example decrypt text with personal key
dart run dart_crypto_console.dart -t 'JmYLptNNWj87Ws4JgAELaA==' -o d -k 'Pr30:5CaPaDeusCoPura'
