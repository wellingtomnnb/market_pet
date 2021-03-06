import 'package:flutter/material.dart';
import 'package:market_pet/controler/app_config.dart';

class ManutencaoPage extends StatelessWidget {
  sizeWidth({context, percentSize}) => MediaQuery.of(context).size.width * (percentSize > 0 ? percentSize/100 : 1);
  sizeHeight({context, percentSize}) => MediaQuery.of(context).size.height * (percentSize > 0 ? percentSize/100 : 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppConfig.cianoLogo,
      appBar: PreferredSize(
      preferredSize: Size.fromHeight(40.0),
      child: AppBar(
        iconTheme: IconThemeData(color: AppConfig.cianoLogo),
        backgroundColor: AppConfig.cianoLogo,
        backwardsCompatibility: false,
        brightness: Brightness.dark,
        elevation: 0,
        leading: IconButton(
            splashRadius: 18,
            icon: Icon(Icons.arrow_back, color: Colors.grey, size: 25),
            tooltip: 'Voltar',
            onPressed: () => Navigator.of(context).pop()
        ),
      ),
    ),
      body: Column(
        children: [
          ///AREA COM MASCOTE E LOGO
          Stack(alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: AppConfig.cianoLogo,
                child: Column(
                  children: [
                    Container(
                      color: AppConfig.cianoLogo,
                      width: sizeWidth(context: context, percentSize: 100),
                      height: sizeHeight(context: context, percentSize: 55) * 0.73,
                    ),
                    Container(
                      width: sizeWidth(context: context, percentSize: 100),
                      height: sizeHeight(context: context, percentSize: 55) *  0.15,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(55), topRight: Radius.circular(55))),
                    ),
                  ],
                ),
              ),
              Container(
                width: sizeWidth(context: context, percentSize: 100),
                height: sizeHeight(context: context, percentSize: 50),
                child: Image.asset(AppConfig.stringDogManutencao),
              ),
              Container(
                  width: sizeHeight(context: context, percentSize: 55) * 0.25,
                  //height: sizeWidth(context: context, percentSize: 55) * 0.30,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: Padding(padding: EdgeInsets.all(10), child: Image.asset(AppConfig.stringLogo),)
              ),
            ],
          ),
          ///AREA COM NOME, DESCRI????O E OP????ES DE LOGIN
          Expanded(
              child: Container(color: Colors.white,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(5),
                          child: Text('Ops...\nParece que voc?? encontrou um recurso em desenvolvimento. Dentro das pr??ximas semanas esse recurso j?? estar?? dispon??vel!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppConfig.cinzaTexto,
                                fontSize: AppConfig.titleSize-5,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w400
                            ),
                          )
                      ),
                    ],
                  ),

              )
          )
        ],
      ),
    );
  }
}
