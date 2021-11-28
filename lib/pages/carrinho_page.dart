import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_pet/pages/home_loja.dart';

class CarrinhoPage extends StatefulWidget{
  StreamController<int> _controller = StreamController<int>();

  @override
  _CarrinhoPageState createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LojaHome(),
    );
  }
}

