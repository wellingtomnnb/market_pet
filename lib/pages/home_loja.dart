import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:market_pet/controler/app_config.dart';
import 'package:market_pet/controler/controller_carrinho.dart';
import 'package:market_pet/controler/utils.dart';
import 'package:market_pet/models/product.dart';
import 'package:market_pet/pages/carrinho_page.dart';
import 'package:market_pet/pages/manutencao_page.dart';
import 'package:market_pet/pages/product_page.dart';
import 'package:market_pet/widgets/card_produto.dart';
import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';


class LojaHome extends StatefulWidget {
  LojaHome({this.nomeLoja = "PetTop", this.descricaoLoja = "Banho, Tosa e Acessórios", this. logoUrl = '', this.contato = '-'});
  String nomeLoja, descricaoLoja, logoUrl, contato = '-';
  @override
  _LojaHomeState createState() => _LojaHomeState();
}

class _LojaHomeState extends State<LojaHome> {
  sizeWidth(context, {percentSize = 0}) => MediaQuery.of(context).size.width * (percentSize > 0 ? percentSize/100 : 1);
  sizeHeight(context, {percentSize = 0}) => MediaQuery.of(context).size.height * (percentSize > 0 ? percentSize/100 : 1);

  List<Product> carrinho = [];
  var isFavorite = false;

  initState(){
    ThemeData(cardTheme: CardTheme(color: Colors.cyanAccent));
    carrinho = ControllerCarrinho.list;
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          iconTheme: IconThemeData(color: AppConfig.cinzaTexto),
          backgroundColor: Colors.white,
          backwardsCompatibility: false,
          brightness: Brightness.dark,
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.grey[50]),
          elevation: 0,
          leading: IconButton(
            splashRadius: 18,
            icon: Icon(Icons.arrow_back, color: Colors.grey, size: 25),
            tooltip: 'Voltar',
            onPressed: () => Navigator.of(context).pop()
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
      body: Container(
        color: AppConfig.cinzaBkg,
        child: Column(
          children: [
            ShopHeader(),
            SizedBox(height: 5),
            Expanded(child: Stack(
                children: [
                  Container(color: Colors.white, height: sizeHeight(context)),
                  listas(),
                ]
            )),
            if(ControllerCarrinho.getTotalItens() > 0) GestureDetector(onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => CarrinhoPage())),
              child: Container(color: AppConfig.vermelhoIcone, height: sizeHeight(context,percentSize: 7),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  Badge(
                      position: BadgePosition.topEnd(top: -2, end: 0),
                      badgeContent: Text('${ControllerCarrinho.getTotalItens()}', style: TextStyle(color: Colors.white,fontFamily: "Quicksand", fontWeight: FontWeight.w600)),
                      child: IconButton(
                        splashRadius: 18,
                        icon: Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 23),
                        tooltip: 'Carrinho',
                        onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManutencaoPage()));},
                      )
                  ),

                  Text('Ver Carrinho', style: TextStyle(color: Colors.white,fontFamily: "Quicksand", fontWeight: FontWeight.w600)),
                  Text('R\$ ${ControllerCarrinho.getTotalPrice()>0? (ControllerCarrinho.getTotalPrice()).toStringAsFixed(2).replaceAll('.', ','): '-'}',
                      style: TextStyle(color: Colors.white,fontFamily: "Quicksand", fontWeight: FontWeight.w600)),
                ],),
              )
            )
          ],
        ),
      )
    );
  }

  Widget ShopHeader({nome}){
      return Container(height: 100,  width: sizeWidth(context),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.logoUrl == '' ?
                  Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 10),
                      child: Container(
                        width: 60, height: 60,
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                        child: Image.asset('lib/assets/images/icon_shop_profile.png', fit: BoxFit.cover),
                      )
                  )
                  : Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 10),
                  child: Container(
                      clipBehavior: Clip.antiAlias,
                      width: 60, height: 60,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      //https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2F2017%2F03%2F31%2F15%2FLogo-e-Cartao-de-Visita-207221_385802_154006485_1428184305.jpg
                      child: Image.network(widget.logoUrl, fit: BoxFit.cover,
                          loadingBuilder:(context, child, ImageChunkEvent? loadingProgress) {
                            if(loadingProgress == null) return child;
                            return Center(child: CircularProgressIndicator());
                          },
                          errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) => Image.asset('lib/assets/images/icon_shop_profile.png', fit: BoxFit.cover))
                  )
              ),
                Padding(padding: EdgeInsets.only(bottom: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(widget.nomeLoja, style: TextStyle(fontSize: AppConfig.titleSize - 3, fontFamily: "Quicksand", fontWeight: FontWeight.w600),),
                          Text(widget.descricaoLoja, style: TextStyle(fontSize: AppConfig.subTitleSize, fontFamily: "Quicksand", fontWeight: FontWeight.w600))
                        ]
                    )
                ),
                IconButton(
                    icon: Icon(isFavorite? Icons.favorite :  Icons.favorite_border, color: AppConfig.vermelhoIcone, size: 30),
                    onPressed: (){
                      setState(() {
                        isFavorite? isFavorite = false : isFavorite = true;
                      });
                    }
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
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
                        Text(' ${widget.contato}', style: TextStyle(color: AppConfig.cinzaTexto, fontFamily: "Quicksand", fontWeight: FontWeight.w600))
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

  Widget listas(){
    return Container(color:  AppConfig.cinzaBkg,
        child: ScrollableListTabView(
          tabHeight: 35,
          bodyAnimationDuration: const Duration(milliseconds: 150),
          tabAnimationCurve: Curves.easeOut,
          tabAnimationDuration: const Duration(milliseconds: 200),
          tabs: [
            ScrollableListTab(
                tab: ListTab(
                    activeBackgroundColor: AppConfig.vermelhoIcone,
                    label: Text('Snacks', style: TextStyle(fontSize: 16, fontFamily: "Quicksand", fontWeight: FontWeight.w500)),
                    showIconOnList: true),
                body: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Utils().listSnack.length,
                  itemBuilder: (_, index) => GestureDetector(
                    onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProductPage(product: Utils().listSnack.elementAt(index)))),
                        child: CardProduto(product: Utils().listSnack.elementAt(index))
                    ),
                )
            ),
            ScrollableListTab(
                tab: ListTab(
                  activeBackgroundColor: AppConfig.vermelhoIcone,
                  label: Text('Ração', style: TextStyle(fontSize: 16, fontFamily: "Quicksand", fontWeight: FontWeight.w500)),
                ),
                body: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: Utils().listRacao.length,
                    itemBuilder: (_, index) => GestureDetector(
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProductPage(product: Utils().listRacao.elementAt(index)))),
                        child: CardProduto(product: Utils().listRacao.elementAt(index))
                    ),
                )),
            ScrollableListTab(
                tab: ListTab(
                    activeBackgroundColor: AppConfig.vermelhoIcone,
                    label: Text('Acessórios', style: TextStyle(fontSize: 16, fontFamily: "Quicksand", fontWeight: FontWeight.w500))
                ),
                body: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: Utils().listAcess.length,
                    itemBuilder: (_, index) => GestureDetector(
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProductPage(product: Utils().listAcess.elementAt(index)))),
                        child: CardProduto(product: Utils().listAcess.elementAt(index))
                    ),
                )),
            ScrollableListTab(
                tab: ListTab(
                    activeBackgroundColor: AppConfig.vermelhoIcone,
                    label: Text('Fantasias', style: TextStyle(fontSize: 16, fontFamily: "Quicksand", fontWeight: FontWeight.w500))
                ),
                body: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: Utils().listVest.length,
                    itemBuilder: (_, index) => GestureDetector(
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProductPage(product: Utils().listVest.elementAt(index)))),
                        child: CardProduto(product: Utils().listVest.elementAt(index))
                    ),
                )),
            ScrollableListTab(
                tab: ListTab(
                    activeBackgroundColor: AppConfig.vermelhoIcone,
                    label: Text('Brinquedos', style: TextStyle(fontSize: 16, fontFamily: "Quicksand", fontWeight: FontWeight.w500))
                ),
                body: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: Utils().listBrinq.length,
                    itemBuilder: (_, index) => GestureDetector(
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProductPage(product: Utils().listBrinq.elementAt(index)))),
                        child: CardProduto(product: Utils().listBrinq.elementAt(index))
                    ),
                )),
            ScrollableListTab(
                tab: ListTab(
                    activeBackgroundColor: AppConfig.vermelhoIcone,
                    label: Text('Vitaminas', style: TextStyle(fontSize: 16, fontFamily: "Quicksand", fontWeight: FontWeight.w500))
                ),
                body: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: Utils().listVitam.length,
                    itemBuilder: (_, index) => GestureDetector(
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProductPage(product: Utils().listVitam.elementAt(index)))),
                        child: CardProduto(product: Utils().listVitam.elementAt(index))
                    ),
                )),
          ],
        )
    );
  }
}
