import 'dart:io';

void main() {
  stdout.write('Valor: ');
  int? value = int.tryParse(stdin.readLineSync()!);

  if ((value is int) && (value > 0)) {
    print('Resultado: ${result(value)}');
  } else {
    print('Erro: o valor informado não é válido.');
  }
}

int result(int number) {
  return List.generate(number, (i) => i)
             .where((i) => i % 3 == 0 || i % 5 == 0)
             .reduce((a, b) => a + b);
}
