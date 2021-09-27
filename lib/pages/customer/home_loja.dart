import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:market_pet/controler/app_config.dart';

class LojaHome extends StatefulWidget {
  String nomeLoja = "PetTop";
  String descricaoLoja = "Banho, Tosa e Acessórios";
  String logoUrl = 'https://img.elo7.com.br/product/zoom/22F85BB/adesivo-de-parede-pet-shop-3-parede.jpg';
  // LojaHome({required this.nomeLoja});

  @override
  _LojaHomeState createState() => _LojaHomeState();
}

class _LojaHomeState extends State<LojaHome> {
  sizeWidth(context, {percentSize = 0}) => MediaQuery.of(context).size.width * (percentSize > 0 ? percentSize/100 : 1);
  sizeHeight(context, {percentSize = 0}) => MediaQuery.of(context).size.height * (percentSize > 0 ? percentSize/100 : 1);

  var isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfig.vermelhoIcone,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppConfig.cinzaTexto),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(widget.nomeLoja, style: TextStyle(color: AppConfig.cinzaTexto)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.share, color: Colors.grey),
            tooltip: 'Compartilhar',
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: ShopHeader(nome: 'jk'),
      ),
    );
  }

  Widget ShopHeader({required nome}){
      return Container(
        height: sizeHeight(context, percentSize: 20) > 150? 150 : sizeHeight(context, percentSize: 20),
        width: sizeWidth(context),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(55), bottomRight: Radius.circular(55))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    widget.logoUrl == '' ?
                    Padding(
                        padding: EdgeInsets.all(15),
                        child: Container(
                          width: 70, height: 70,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
                        )
                    )
                        : Padding(
                        padding: EdgeInsets.all(15),
                        child: Container(
                            clipBehavior: Clip.antiAlias,
                            width: 70, height: 70,
                            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
                            //https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2F2017%2F03%2F31%2F15%2FLogo-e-Cartao-de-Visita-207221_385802_154006485_1428184305.jpg
                            child: Image.network(widget.logoUrl)
                        )
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.nomeLoja, style: TextStyle(fontSize: AppConfig.titleSize - 3, fontFamily: "Quicksand", fontWeight: FontWeight.w600),),
                          Text(widget.descricaoLoja, style: TextStyle(fontSize: AppConfig.subTitleSize, fontFamily: "Quicksand", fontWeight: FontWeight.w600))
                        ]
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(isFavorite? Icons.favorite :  Icons.favorite_border, color: AppConfig.vermelhoIcone),
                  onPressed: (){
                    setState(() {
                      isFavorite? isFavorite = false : isFavorite = true;
                    });
                  }
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 17,
                        child: Image.asset('lib/assets/images/icon_whatsapp.png'),
                      ),
                      Text('27 997232-1485', style: TextStyle(color: AppConfig.cinzaTexto, fontFamily: "Quicksand", fontWeight: FontWeight.w600))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, size: 17, color: Colors.amber,),
                      Text('3.8', style: TextStyle(color: Colors.amber, fontFamily: "Quicksand", fontWeight: FontWeight.w600))
                    ],
                  ),
                ],
              )
            )
          ],
        ),

      );
  }
}
