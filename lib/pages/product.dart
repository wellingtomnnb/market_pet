import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market_pet/controler/app_config.dart';
import 'package:market_pet/pages/home_loja.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {

  sizeWidth({context, percentSize}) => MediaQuery.of(context).size.width * (percentSize > 0 ? percentSize/100 : 1);
  sizeHeight({context, percentSize}) => MediaQuery.of(context).size.height * (percentSize > 0 ? percentSize/100 : 1);

  String prodDescription = 'Ideal para uma alimentação rápida depois de alguma atividade, o Queridinhos é fonte de'
  ': \n- Atóxicos; \n- Vitaminas,\n- Minerais,\n-Rico em Carboidrato e Proteina B3 ';

  var price = 58.81;
  int _n = 0;
  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }
  void add() {
    setState(() {
      _n++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          iconTheme: IconThemeData(color: AppConfig.cinzaTexto),
          backgroundColor: AppConfig.cinzaBkg,
          backwardsCompatibility: false,
          brightness: Brightness.dark,
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.grey),
          elevation: 0,
          leading: IconButton(
              splashRadius: 18,
              icon: Icon(Icons.arrow_back, color: Colors.grey, size: 25),
              tooltip: 'Voltar',
              onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LojaHome(carrinhoCount: _n)))
          ),
          actions: [
            IconButton(
              splashRadius: 18,
              icon: Padding(padding: EdgeInsets.only(top: 3), child: Icon(Icons.share, color: Colors.grey, size: 23)),
              tooltip: 'Compartilhar',
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Container(color: AppConfig.cinzaBkg,
        child: Column(
          children: [
            Expanded(
                child: Container(padding: EdgeInsets.all(10),//color: Colors.blue,
                  child: Container(
                    //color: Colors.redAccent,
                    child:  Image.network('logoUrl', fit: BoxFit.cover,
                        loadingBuilder:(context, child, ImageChunkEvent? loadingProgress) {
                          if(loadingProgress == null) return child;
                          return Center(child: CircularProgressIndicator());
                        },
                        errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) => Image.asset('lib/assets/images/icon_product.png', fit: BoxFit.cover)
                    ),
                  ),
                )
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, -3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  //TITTLE
                  Padding(padding: EdgeInsets.all(10),
                    child: Text('Kit Queridinhos Petiscos Para Cães',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppConfig.cinzaTexto,
                            fontSize: AppConfig.titleSize,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w600)
                    ),
                  ),
                  //DESCRIPTION
                  Padding(padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text(prodDescription,style: TextStyle(color: AppConfig.cinzaTexto, fontSize: AppConfig.subTitleSize, fontFamily: "Quicksand", fontWeight: FontWeight.w500),),
                  ),
                  //VALUE AND BUY
                  Padding(padding: EdgeInsets.only(bottom: 10, top: 20),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('R\$ ${price>0? (price*_n).toStringAsFixed(2).replaceAll('.', ','): '-'}',
                              style: TextStyle(color: AppConfig.cinzaTexto,
                                  fontSize: AppConfig.titleSize,
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.bold)
                          ),
                          Container(
                              constraints: BoxConstraints(maxHeight: 30),
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
                          IconButton(
                            iconSize: 24*1.3,
                            icon: Icon(Icons.add_shopping_cart, color: AppConfig.azulBtEntrar),
                            tooltip: 'Adicionar ao Carrinho',
                            onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LojaHome(carrinhoCount: _n)))
                          ),

                        ]
                    )
                    ,
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
