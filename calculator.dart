import 'dart:io';

void main() {
  calculo();
}

void calculo() {
  while (true) {
    print('Digite a operação (+, -, *, /):');
    String opcao = stdin.readLineSync()!;

    double resultado = 0;
    print('Digite o primeiro valor:');
    double num1 = double.parse(stdin.readLineSync()!); // converter para double a entrada
    print('Digite o segundo valor:');
    double num2 = double.parse(stdin.readLineSync()!);

    if (opcao == '+') {
      resultado = soma(num1, num2);
    } else if (opcao == '-') {
      resultado = subtracao(num1, num2);
    } else if (opcao == '*') {
      resultado = multiplicacao(num1, num2);
    } else if (opcao == '/') {
      resultado = divisao(num1, num2);
    } else {
      print('Operação inválida!');
      return;
    }
    print('Resultado: $num1 $opcao $num2 = $resultado');
  }
}

double soma(double num1, double num2) {
  return num1 + num2;
}

double subtracao(double num1, double num2) {
  return num1 - num2;
}

double multiplicacao(double num1, double num2) {
  return num1 * num2;
}

double divisao(double num1, double num2) {
  if (num2 != 0) {
    return num1 / num2;
  } else {
    print('Erro >>>> Divisão foi feita por zero!');
    return 0;
  }
}
