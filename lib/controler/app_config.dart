import 'package:flutter/cupertino.dart';

class AppConfig{

  static final stringLogo = 'lib/assets/images/logo.png';
  static final stringMascote = 'lib/assets/images/mascote.png';
  static final stringDogManutencao = 'lib/assets/images/dog_man.png';
  static final stringIconServicos = 'lib/assets/images/icons_filters/icon_servicos.png';
  static final appName = 'Market Pet';
  static final appDescribe = 'A qualquer hora e em qualquer situação, aqui seu animal ganha toda atenção.';
  static final loginText = 'Falta pouco para conhecer ofertas especiais!';
  static final titleSize = 25.0;
  static final subTitleSize = 14.0;
  static final vermelhoIcone = Color(0XFFF77B7B);
  static final azulBtEntrar = Color(0XFF1CE1D1);
  static final cinzaTexto = Color(0XFF7D7D7D);
  static final cianoLogo = Color(0XFFFBCE0DD);
  static final cinzaBkg = Color(0XFFEFEDED);

  sizeWidth(context, {percentSize = 0}) => MediaQuery.of(context).size.width * (percentSize > 0 ? percentSize/100 : 1);
  sizeHeight(context, {percentSize = 0}) => MediaQuery.of(context).size.height * (percentSize > 0 ? percentSize/100 : 1);


}