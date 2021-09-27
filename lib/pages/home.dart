import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:market_pet/controler/app_config.dart';
import 'package:market_pet/models/fragments.dart';
import 'package:market_pet/pages/start_page.dart';
import 'package:market_pet/widgets/home_fragments.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



  sizeWidth({context, percentSize = 0}) => MediaQuery.of(context).size.width * (percentSize > 0 ? percentSize/100 : 1);
  sizeHeight({context, percentSize = 0}) => MediaQuery.of(context).size.height * (percentSize > 0 ? percentSize/100 : 1);

  final List<String> _suggestions = ['Alligator', 'Buffalo', 'Chicken', 'Dog', 'Eagle', 'Frog'];

  var bannerUrl = 'https://staticpetz.stoom.com.br/fotos/Home_Desk_1900x390_Ganhe10OFF-unidade-Fortekor.gif';
  var bannerUrl2 = 'https://staticpetz.stoom.com.br/fotos/Home_Desk_1900x390_Anivers%C3%A1rio_Album_2021_08.png';
  var empytText = true;

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppConfig.cinzaBkg,
            iconTheme: IconThemeData(color: Colors.black54),
            actions: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 12, bottom: 12, right: 10),
                width: sizeWidth(context: context, percentSize: 70),
                child: TextField(onEditingComplete: () => FocusScope.of(context).unfocus(),
                  onChanged: (text){ setState(()=> searchController );},
                  controller: searchController,
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: 'Buscar na PetStore',
                    fillColor: Colors.white, filled: true,
                    contentPadding: EdgeInsets.all(5.0),
                    prefixIcon:  IconButton(
                      splashRadius: 20,
                      icon: Icon(Icons.search, size: 17),
                      tooltip: 'Pesquisar',
                      onPressed: () {},
                    ),
                    suffixIcon:  IconButton(
                      splashRadius: 10,
                      icon: searchController.text.isEmpty ? Container() : Icon(Icons.close, size: 15),
                      tooltip: 'Limpar',
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        searchController.clear();
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        // borderSide: BorderSide(color: Colors.white)
                    ),
                  ),
                ),),
              IconButton(
                icon: Icon(Icons.shopping_cart_outlined, color:  Colors.black54),
                tooltip: 'Abrir carrinho',
                onPressed: () {},
              ),
            ],
            bottom: TabBar(
              labelColor: AppConfig.vermelhoIcone,
              unselectedLabelColor: Colors.black54,
              indicatorColor: AppConfig.vermelhoIcone,
              tabs: [
                Tab(text: "Lojas",),
                Tab(text: "Clínicas",),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget> [
                Container(
                  color: Colors.red,
                  child: Padding(padding: EdgeInsets.only(left: 10, top: 25, bottom: 25),
                    child:  Row(
                        children: [
                          Padding(padding: EdgeInsets.only(right: 10),
                              child: Icon(Icons.account_circle_sharp, size: sizeWidth(context: context, percentSize: 10))
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Wellington Braga", style: TextStyle(fontSize: 20),),
                              Text("well@ucl.br", style: TextStyle(fontSize: 15)),
                            ],
                          )

                        ]
                       ),
                  )
                ),
                ListTile(
                    leading: Icon(Icons.check_circle_outline),
                    title: Text("Configurações"),
                    onTap: () {}
                  // onTap: () =>Navigator.of(context).push(MaterialPageRoute(builder: (context) => VistoriasPage()))
                ),
                ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text("Sobre"),
                    onTap: () {}
                ),
                ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: Text("Sair"),
                    onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => StartPage()))
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              HomeFragments(context, Fragments().Lojas(), sizeWidth(context: context), sizeHeight(context: context)),
              HomeFragments(context, Fragments().Clinicas(), sizeWidth(context: context), sizeHeight(context: context)),
            ],
          ),
      )
    );
  }
}