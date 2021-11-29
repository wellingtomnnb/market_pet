import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_pet/controler/app_config.dart';
import 'package:market_pet/pages/home.dart';
import 'package:market_pet/pages/login.dart';
import 'package:market_pet/pages/manutencao_page.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  sizeWidth({context, percentSize}) => MediaQuery.of(context).size.width * (percentSize > 0 ? percentSize/100 : 1);
  sizeHeight({context, percentSize}) => MediaQuery.of(context).size.height * (percentSize > 0 ? percentSize/100 : 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ///AREA COM MASCOTE E LOGO
          Stack(
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
                      height: sizeHeight(context: context, percentSize: 55) *  0.27,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(55), topRight: Radius.circular(55))),
                    ),
                  ],
                ),
              ),
              Stack(alignment: Alignment.bottomCenter,
                children: [
                  Container(
                      width: sizeWidth(context: context, percentSize: 100),
                      height: sizeHeight(context: context, percentSize: 55),
                      child: Image.asset(AppConfig.stringMascote),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: sizeHeight(context: context, percentSize: 3)),
                    child: Container(
                        width: sizeHeight(context: context, percentSize: 55) * 0.27,
                        //height: sizeWidth(context: context, percentSize: 55) * 0.30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                        child: Padding(padding: EdgeInsets.all(10),
                            child: Image.asset(AppConfig.stringLogo))
                    ),
                  )
                ],),
            ],
          ),
          ///AREA COM NOME, DESCRIÇÃO E OPÇÕES DE LOGIN
          Expanded(
              child: Container(color: Colors.white,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text('Bem vindo ao', style: TextStyle(color: AppConfig.azulBtEntrar, fontSize: AppConfig.titleSize, fontFamily: "Quicksand", fontWeight: FontWeight.w600),),
                          Text(AppConfig.appName,
                            style: TextStyle(
                              color: AppConfig.vermelhoIcone,
                              fontSize: AppConfig.titleSize + 10,
                              fontFamily: 'Cherry Bomb',
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(2.0, 3.0),
                                  blurRadius: 3,
                                  color: Color.fromARGB(255, 189, 189, 189),
                                ),

                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(5),
                              child: Text(AppConfig.appDescribe, textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppConfig.cinzaTexto,
                                    fontSize: AppConfig.subTitleSize,
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.w400
                                ),
                              )
                          ),
                        ],
                      ),
                      Expanded(
                          child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: sizeWidth(context: context, percentSize: 70),
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                        color: AppConfig.azulBtEntrar,
                                        borderRadius: BorderRadius.circular(15)),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20),
                                          elevation: 0, minimumSize: Size.fromRadius(25), primary: AppConfig.azulBtEntrar, onSurface: AppConfig.azulBtEntrar
                                      ),
                                      onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManutencaoPage()));},
                                      child: Text('Cadastre-se', style: TextStyle(fontSize: AppConfig.titleSize, fontFamily: "Quicksand", fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 15),
                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                                        // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()));
                                      },
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('Já tem uma conta? ',
                                                style: TextStyle(
                                                    color: AppConfig.cinzaTexto, fontSize: AppConfig.subTitleSize, fontFamily: "Quicksand")),
                                            Text('Entrar.',
                                                style: TextStyle(
                                                    color: AppConfig.azulBtEntrar, fontSize: AppConfig.subTitleSize, fontFamily: "Quicksand", fontWeight: FontWeight.w500))
                                          ]
                                      ),
                                    ),)
                                ],
                              ),
                      ))
                    ],
                  )
              )
          )
        ],
      ),
    );
  }
}
