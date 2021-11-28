import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:market_pet/controler/app_config.dart';


// Widget CardProduto({String title = 'Sem Nome', double price = 0.0, String logoUrl = '', carrinho = false, stream}) {
//   int _n = 0;
//   return Card(
//       elevation: 0,
//       color: Colors.white,
//       child: Row(crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(padding: EdgeInsets.only(left: 10, right: 10),
//               child: Container(
//                 child: Image.network(logoUrl, fit: BoxFit.cover,
//                     loadingBuilder:(context, child, ImageChunkEvent? loadingProgress) {
//                       if(loadingProgress == null) return child;
//                       return Center(child: CircularProgressIndicator());
//                     },
//                     errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) => Image.asset('lib/assets/images/icon_product.png', fit: BoxFit.cover)
//                 ),
//                 width: 80, height: 80,
//               )
//           ),
//           Expanded(child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(title, style: TextStyle(fontSize: 14, fontFamily: "Quicksand", fontWeight: FontWeight.w500)),
//                 Padding(padding: EdgeInsets.all(3)),
//                 !carrinho?
//                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text('R\$ ${price>0? price.toString().replaceAll('.', ','): '-'}', style: TextStyle(fontSize: 18, fontFamily: "Quicksand", fontWeight: FontWeight.w800)),
//                       Padding(padding: EdgeInsets.only(right: 9),
//                         child: Container(
//                             constraints: BoxConstraints(maxHeight: 27),
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.all(Radius.circular(30)),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: AppConfig.azulBtEntrar,
//                                   spreadRadius: .5,
//                                   blurRadius: 0,
//                                   offset: Offset(0, 0), // changes position of shadow
//                                 ),
//                               ],
//                             ),
//                             child: Row(mainAxisSize: MainAxisSize.min,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: <Widget>[
//                                 FloatingActionButton(
//                                   mini: true,
//                                   elevation: 0,
//                                   onPressed: () {
//                                     _n--;
//                                     upd;
//                                   },
//                                   child:  Icon(Icons.remove, color: AppConfig.cinzaTexto),
//                                   backgroundColor: Colors.white,),
//                                 Text('$_n',
//                                     style: new TextStyle(fontSize: AppConfig.titleSize-3,
//                                         color: AppConfig.cinzaTexto,
//                                         fontFamily: "Quicksand", fontWeight: FontWeight.w500
//                                     )
//                                 ),
//                                 FloatingActionButton(
//                                   mini: true,
//                                   elevation: 0,
//                                   onPressed: (){
//                                     _n++;
//                                     upd;
//                                   },
//                                   child: new Icon(Icons.add, color: AppConfig.cinzaTexto),
//                                   backgroundColor: Colors.white,),
//                               ],
//                             )
//                         ),
//                       )
//                     ]
//                 )
//                     :Text('R\$ ${price>0? price.toString().replaceAll('.', ','): '-'}', style: TextStyle(fontSize: 18, fontFamily: "Quicksand", fontWeight: FontWeight.w800))
//               ]
//           )),
//         ],
//       )
//   );
// }

class CardProduto extends StatefulWidget {
  CardProduto({this.title = 'Sem Nome', this.price = 7.0, this.logoUrl = '', this.carrinho = false});
  String title, logoUrl;
  double price = 0.0;
  bool carrinho = false;

  @override
  _CardProdutoState createState() => _CardProdutoState();
}

class _CardProdutoState extends State<CardProduto> {
  var _n = 0;
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
    return Card(
        elevation: 0,
        color: Colors.white,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  child: Image.network(widget.logoUrl, fit: BoxFit.cover,
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
                  Text(widget.title, style: TextStyle(fontSize: 14, fontFamily: "Quicksand", fontWeight: FontWeight.w500)),
                  Padding(padding: EdgeInsets.all(3)),
                  !widget.carrinho?
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('R\$ ${widget.price>0? (widget.price*_n).toString().replaceAll('.', ','): '-'}', style: TextStyle(fontSize: 18, fontFamily: "Quicksand", fontWeight: FontWeight.w800)),
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
                      :Text('R\$ ${widget.price>0? widget.price.toString().replaceAll('.', ','): '-'}', style: TextStyle(fontSize: 18, fontFamily: "Quicksand", fontWeight: FontWeight.w800))
                ]
            )),
          ],
        )
    );
  }
}

