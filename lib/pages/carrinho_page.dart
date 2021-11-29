import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_pet/controler/app_config.dart';
import 'package:market_pet/controler/controller_carrinho.dart';
import 'package:market_pet/pages/manutencao_page.dart';
import 'package:market_pet/widgets/card_produto.dart';

class CarrinhoPage extends StatefulWidget{

  @override
  _CarrinhoPageState createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {

  num totalPrice =  0;

  @override
  void initState() {
    totalPrice = ControllerCarrinho.getTotalPrice();
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
          elevation: 0,
          leading: IconButton(
              splashRadius: 18,
              icon: Icon(Icons.arrow_back, color: Colors.grey, size: 25),
              tooltip: 'Voltar',
              onPressed: () => Navigator.of(context).pop()
          ),
          actions: [
            GestureDetector(
              onTap: (){
                setState(() {
                  ControllerCarrinho.list = [];
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                });
              },
              child: Center(child: Text('limpar   ', style: TextStyle(color: Colors.red,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w700
                    ),
                )
              )

            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 15),
            ///Lista de Produtos
            Expanded(child: ListView.builder(
                itemCount: ControllerCarrinho.list.length,
                itemBuilder: (_, index) => CardProduto(carrinho: true,
                    product: ControllerCarrinho.list.elementAt(index)))
              ),
            ///Totais
            Container(padding: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 10),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Subtotal:',
                          style: TextStyle(color: AppConfig.cinzaTexto,
                              fontSize: AppConfig.titleSize - 4,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.w500)
                      ),
                      Text('R\$ ${totalPrice>0? (totalPrice).toStringAsFixed(2).replaceAll('.', ','): '0,00'}',
                          style: TextStyle(color: AppConfig.cinzaTexto,
                              fontSize: AppConfig.titleSize -4,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.w500)
                      )
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Taxa de Entrega:',
                          style: TextStyle(color: AppConfig.cinzaTexto,
                              fontSize: AppConfig.titleSize -6,
                              fontFamily: "Quicksand")
                      ),
                      Text('0,00',//R\$ ${total>0? (total).toStringAsFixed(2).replaceAll('.', ','): '-'}',
                          style: TextStyle(color: AppConfig.cinzaTexto,
                              fontSize: AppConfig.titleSize -6,
                              fontFamily: "Quicksand")
                      )
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total:',
                          style: TextStyle(color: AppConfig.cinzaTexto,
                              fontSize: AppConfig.titleSize,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.bold)
                      ),
                      Text('R\$ ${totalPrice>0? (totalPrice).toStringAsFixed(2).replaceAll('.', ','): '0,00'}',
                          style: TextStyle(color: AppConfig.cinzaTexto,
                              fontSize: AppConfig.titleSize,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.bold)
                      )
                    ],
                  )

                ],
              ),
            ),
            ///Botão Fazer Pedido
            Container(
              width: 200,//sizeWidth(context: context, percentSize: 70),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  color: AppConfig.azulBtEntrar,
                  borderRadius: BorderRadius.circular(15)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20, fontFamily: "Quicksand", fontWeight: FontWeight.w600),
                    elevation: 0, minimumSize: Size.fromRadius(25), primary: AppConfig.azulBtEntrar, onSurface: AppConfig.azulBtEntrar
                ),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManutencaoPage())),
                child: Text('Fazer Pedido', style: TextStyle(fontSize: AppConfig.titleSize, fontFamily: "Quicksand", fontWeight: FontWeight.w500)),
              ),
            ),
            SizedBox(height: 15)
          ],
        ),
      )
    );
  }
}

