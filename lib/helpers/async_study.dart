// ignore_for_file: avoid_print

import 'dart:math';

asyncStudy() {
  //execucaoNormal();
  //assincronismoBasico();
  //usandoFuncoesAssincronas();
  //esperandoFuncoesAssincronas();
}

void execucaoNormal() {
  print("\nExecução Normal");
  print("01");
  print("02");
  print("03");
  print("04");
  print("05");
}

void assincronismoBasico() {
  print("\nAssincronismo Básico");
  print("01");
  print("02");
  Future.delayed(const Duration(seconds: 2), () {
    print("03");
  });
  print("04");
  print("05");
}

void usandoFuncoesAssincronas() {
  print("\nUsando funções assincronas");
  print("A");
  print("B");

  getRandomInt(3).then((value) {
    print(value);
  });

  print("C");
  print("D");
}

void esperandoFuncoesAssincronas() async {
  print("A");
  print("B");
  int number = await getRandomInt(4);
  print("O outro número aleatório é $number.");
  print("C");
  print("D");
}

Future<int> getRandomInt(int time) async {
  await Future.delayed(Duration(seconds: time));

  Random rng = Random();

  return rng.nextInt(10);
}
