import 'package:flutter/material.dart';
import 'package:market_pet/pages/carrinho_page.dart';

void main() {
  runApp(MaterialApp(
      // --no-sound-null-safety
      // home: StartPage(),
      home: CarrinhoPage(),
      debugShowCheckedModeBanner: false //remove borda de debug
  ));
}

