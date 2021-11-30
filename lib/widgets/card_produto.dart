import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:market_pet/controler/app_config.dart';
import 'package:market_pet/controler/controller_carrinho.dart';
import 'package:market_pet/models/product.dart';



class CardProduto extends StatefulWidget {
  CardProduto({this.carrinho = false, required this.product});
  Product product;
  bool carrinho = false;

  @override
  _CardProdutoState createState() => _CardProdutoState();
}

class _CardProdutoState extends State<CardProduto> {
  num _n = 1;
  void minus() {
    setState(() {
      if (_n > 1 ) {
        if(widget.carrinho) {
          ControllerCarrinho.list.firstWhere((element) =>
          element.title == widget.product.title).qtd = _n;}
        _n--;
      }
    });
  }
  void add() {
    setState(() {
      _n++;
    });
  }

  @override
  void initState() {
    if(widget.carrinho) _n = widget.product.qtd;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0, margin: EdgeInsets.zero,
        color: Colors.white,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  child: Image.network(widget.product.logoUrl, fit: BoxFit.cover,
                      loadingBuilder:(context, child, ImageChunkEvent? loadingProgress) {
                        if(loadingProgress == null) return child;
                        return Center(child: CircularProgressIndicator());
                      },
                      errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) => Image.asset('lib/assets/images/icon_product.png', fit: BoxFit.cover)
                  ),
                  width: 80, height: 80,
                )
            ),
            Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.product.title, style: TextStyle(fontSize: 14, fontFamily: "Quicksand", fontWeight: FontWeight.w500)),
                  Padding(padding: EdgeInsets.all(3)),
                  widget.carrinho?
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('R\$ ${widget.product.price>0? (widget.product.price*_n).toStringAsFixed(2).replaceAll('.', ','): '0,00'}', style: TextStyle(fontSize: 18, fontFamily: "Quicksand", fontWeight: FontWeight.w800)),
                          Padding(padding: EdgeInsets.only(right: 9),
                            child: Container(
                                width: 125,
                                constraints: BoxConstraints(maxHeight: 27),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppConfig.azulBtEntrar,
                                      spreadRadius: .5,
                                      blurRadius: 0,
                                      offset: Offset(0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Row(mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    FloatingActionButton(
                                      mini: true,
                                      elevation: 0,
                                      onPressed: minus,
                                      child:  Icon(Icons.remove, color: AppConfig.cinzaTexto),
                                      backgroundColor: Colors.white,),
                                    Text('$_n',
                                        style: new TextStyle(fontSize: AppConfig.titleSize-3,
                                            color: AppConfig.cinzaTexto,
                                            fontFamily: "Quicksand", fontWeight: FontWeight.w500
                                        )
                                    ),
                                    FloatingActionButton(
                                      mini: true,
                                      elevation: 0,
                                      onPressed: add,
                                      child: new Icon(Icons.add, color: AppConfig.cinzaTexto),
                                      backgroundColor: Colors.white,),
                                  ],
                                )
                            ),
                          )
                        ]
                    )
                    :Text('R\$ ${widget.product.price>0? widget.product.price.toStringAsFixed(2).replaceAll('.', ','): '0,00'}', style: TextStyle(fontSize: 18, fontFamily: "Quicksand", fontWeight: FontWeight.w800))
                ]
            )),
          ],
        )
    );
  }
}

