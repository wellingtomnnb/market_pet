import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  sizeWidth({context, percentSize}) => MediaQuery.of(context).size.width * (percentSize > 0 ? percentSize/100 : 1);
  sizeHeight({context, percentSize}) => MediaQuery.of(context).size.height * (percentSize > 0 ? percentSize/100 : 1);
  final List<String> _suggestions = [
    'Alligator',
    'Buffalo',
    'Chicken',
    'Dog',
    'Eagle',
    'Frog'
  ];

  var empytText = true;

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 10, bottom: 10),
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
                  icon: Icon(Icons.search, size: 20,),
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
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.white)
                ),
              ),
            ),),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            tooltip: 'Abrir carrinho',
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(children: <Widget> [
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
                onTap: () {}
            )
          ],
          ),
        ),
      body: Column(children: [
        Center(child: Text("asaisjasi"),),
        Center(child: Text("asaisjasi"),),
        Center(child: Text("asaisjasi"),),
        Center(child: Text("asaisjasi"),),Center(child: Text("asaisjasi"),),
        Center(child: Text("asaisjasi"),),
        Center(child: Text("asaisjasi"),),
        Center(child: Text("asaisjasi"),),
        Center(child: Text("asaisjasi"),),
        Center(child: Text("asaisjasi"),),
        Center(child: Text("asaisjasi"),),
        Center(child: Text("asaisjasi"),),
        Center(child: Text("asaisjasi"),),
        Center(child: Text("asaisjasi"),),
        Center(child: Text("asaisjasi"),),

      ],)
    );
  }
}
