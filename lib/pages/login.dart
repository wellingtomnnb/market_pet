import 'package:flutter/material.dart';
import 'package:market_pet/controler/app_config.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:market_pet/pages/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, iconTheme: IconThemeData(color: AppConfig.cinzaTexto)),
        body:  Container( alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      width: AppConfig().sizeWidth(context, percentSize: 25),
                      //height: AppConfig().sizeWidth(context, percentSize: 55),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(100)),
                      child: Padding(padding: EdgeInsets.all(10),
                          child: Image.asset(AppConfig.stringLogo))
                  ),
                  Text(AppConfig.appName,
                    style: TextStyle(
                      color: AppConfig.vermelhoIcone,
                      fontSize: AppConfig.titleSize + 5,
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
                  SizedBox(height: 20),
                  Text(AppConfig.loginText, textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppConfig.cinzaTexto,
                        fontSize: AppConfig.subTitleSize + 5,
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Container(padding: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'bob@marketpet.com',
                              fillColor: Colors.white, filled: true,
                              contentPadding: EdgeInsets.all(5.0),
                              labelText: 'Email'
                          ),
                          validator: (String value) {
                            return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                          },
                        ),
                        SizedBox(height: 20),
                        TextFormField(obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Colors.white, filled: true,
                            contentPadding: EdgeInsets.all(5.0),
                            labelText: 'Senha',

                          ),
                          validator: (String value) {
                            return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 200,//sizeWidth(context: context, percentSize: 70),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        color: AppConfig.azulBtEntrar,
                        borderRadius: BorderRadius.circular(15)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20),
                          elevation: 0, minimumSize: Size.fromRadius(25), primary: AppConfig.azulBtEntrar, onSurface: AppConfig.azulBtEntrar
                      ),
                      onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home())),
                      child: Text('Entrar', style: TextStyle(fontSize: AppConfig.titleSize, fontFamily: "Quicksand", fontWeight: FontWeight.w500)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('ou', textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppConfig.cinzaTexto,
                        fontSize: AppConfig.subTitleSize + 5,
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 20),
                  SignInButton(
                    Buttons.Google,
                    text: 'Continuar com o Google',
                    //mini: true,
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()))
                  ),
                  SizedBox(height: 20),
                ],
              ),
            )
        )
    );
  }
}
