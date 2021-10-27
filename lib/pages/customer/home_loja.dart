import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:market_pet/controler/app_config.dart';
import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';


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

  initState(){
    ThemeData(cardTheme: CardTheme(color: Colors.cyanAccent));
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.0),
        child: AppBar(
          iconTheme: IconThemeData(color: AppConfig.cinzaTexto),
          backgroundColor: Colors.white,
          backwardsCompatibility: false,
          brightness: Brightness.dark,
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.grey[50]),
          elevation: 0,
          leading: IconButton(
            splashRadius: 18,
            icon: const Icon(Icons.arrow_back, color: Colors.grey, size: 23),
            tooltip: 'Voltar',
            onPressed: () => Navigator.of(context).pop()
          ),
          actions: [
            IconButton(
              splashRadius: 18,
              icon: const Icon(Icons.share, color: Colors.grey, size: 23),
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
                  listas()
                ]
            ))
          ],
        ),
      )
    );
  }

  Widget ShopHeader({nome}){
      return Container(
        height: sizeHeight(context, percentSize: 17) > 100? 100 : sizeHeight(context, percentSize: 17),
        width: sizeWidth(context),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(55), bottomRight: Radius.circular(55))),
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
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
                    )
                )
                : Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 10),
                    child: Container(
                        clipBehavior: Clip.antiAlias,
                        width: 60, height: 60,
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
                        //https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2F2017%2F03%2F31%2F15%2FLogo-e-Cartao-de-Visita-207221_385802_154006485_1428184305.jpg
                        child: Image.network(widget.logoUrl)
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

  Widget listas(){
    return Container(color: Colors.red,child: ScrollableListTabView(
      tabHeight: 35,
      bodyAnimationDuration: const Duration(milliseconds: 150),
      tabAnimationCurve: Curves.easeOut,
      tabAnimationDuration: const Duration(milliseconds: 200),
      tabs: [
        ScrollableListTab(
            tab: ListTab(
                activeBackgroundColor: AppConfig.vermelhoIcone,
                label: Text('Snacks'),
                showIconOnList: true),
            body: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LojaHome())),
                    child: Card(
                    elevation: 0,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(15),
                            child: Container(
                              width: 50, height: 50,
                              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
                            )
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('name', style: TextStyle(fontSize: 16, fontFamily: "Quicksand", fontWeight: FontWeight.w600),),
                              Text('describe', style: TextStyle(fontSize: 11, fontFamily: "Quicksand", fontWeight: FontWeight.w600))
                            ]
                        ),
                        if('reputation'.isNotEmpty) Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(Icons.star, size: 17, color: Colors.amber,),
                                      Text('5.0', style: TextStyle(color: Colors.amber, fontFamily: "Quicksand", fontWeight: FontWeight.w600),)
                                    ]
                                )
                            )
                        )
                      ],
                    )
                )
                )
              )
        ),
        ScrollableListTab(
            tab: ListTab(
              activeBackgroundColor: AppConfig.vermelhoIcone,
              label: Text('Ração'),
            ),
            body: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                  alignment: Alignment.center,
                  child: Text(index.toString()),
                ),
                title: Text('List element $index'),
              ),
            )),
        ScrollableListTab(
            tab: ListTab(
                activeBackgroundColor: AppConfig.vermelhoIcone,
                label: Text('Acessórios')
            ),
            body: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => Card(
                child: Center(child: Text('Card element $index')),
              ),
            )),
        ScrollableListTab(
            tab: ListTab(
                activeBackgroundColor: AppConfig.vermelhoIcone,
                label: Text('Fantasias')
            ),
            body: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                  alignment: Alignment.center,
                  child: Text(index.toString()),
                ),
                title: Text('List element $index'),
              ),
            )),
        ScrollableListTab(
            tab: ListTab(
                activeBackgroundColor: AppConfig.vermelhoIcone,
                label: Text('Brinquedos')
            ),
            body: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                  alignment: Alignment.center,
                  child: Text(index.toString()),
                ),
                title: Text('List element $index'),
              ),
            )),
        ScrollableListTab(
            tab: ListTab(
                activeBackgroundColor: AppConfig.vermelhoIcone,
                label: Text('Vitaminas')
            ),
            body: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => Card(
                child: Center(child: Text('Card element $index')),
              ),
            )),
      ],
    ));
  }
}
