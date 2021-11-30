import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:market_pet/controler/app_config.dart';
import 'package:market_pet/models/Loja.dart';
import 'package:market_pet/models/fragments.dart';
import 'package:market_pet/pages/home_loja.dart';
import 'package:market_pet/widgets/banner_carrossel.dart';
import 'package:market_pet/widgets/filter_bar.dart';
import 'package:market_pet/widgets/icon_filter.dart';

import 'card_loja.dart';

Widget HomeFragments(context, Fragments fragmentType, sizeWidth, sizeHeight){
  var img = "https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2F2017%2F03%2F31%2F15%2FLogo-e-Cartao-de-Visita-207221_385802_154006485_1428184305.jpg";
  var img2 = "https://scontent.fvix13-1.fna.fbcdn.net/v/t1.6435-9/84274019_627098657852159_8517829946595344384_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=I4Pk-59MXNkAX9SSkCr&_nc_ht=scontent.fvix13-1.fna&oh=d0b1ce706abdebdfed0cfd1cec8acf7a&oe=61CDBE45";
  var img3 = "https://scontent.fvix13-1.fna.fbcdn.net/v/t1.6435-9/60338448_437353806811445_7347636639029526528_n.png?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=GIHktdRr1CcAX8aPtHu&_nc_ht=scontent.fvix13-1.fna&oh=ae3b4b01ec8531d3d342f11455c678ea&oe=61CCA8DB";
  var img4 = "https://scontent.fvix13-1.fna.fbcdn.net/v/t1.18169-9/20881909_1156611937774285_3914220927298816393_n.png?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=THoIbh4Lp-QAX8_sTDm&_nc_ht=scontent.fvix13-1.fna&oh=1215e95a2c6c60f405a960e24f1fc85a&oe=61CC4D5D";
  var img5 = "https://scontent.fvix13-1.fna.fbcdn.net/v/t1.6435-9/40192112_1919749228070678_1980516794368000_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=973b4a&_nc_ohc=ur3YexNkIhMAX_bgCcE&_nc_ht=scontent.fvix13-1.fna&oh=64b5092665d3d6451e9da729493a648b&oe=61CBC19C";
  var img6 = "http://www.mercadodasracoes.com.br/images/logo.png";
  var img7 = "https://scontent.fvix13-1.fna.fbcdn.net/v/t1.6435-9/67073511_691576291255818_8274105215565692928_n.png?_nc_cat=100&ccb=1-5&_nc_sid=973b4a&_nc_ohc=50jsDPkLxJsAX91Fl2z&_nc_ht=scontent.fvix13-1.fna&oh=433bc3e6b0ba120d6b5b753416db0f32&oe=61CCDDF4";
  var img8 = "https://scontent.fvix13-1.fna.fbcdn.net/v/t1.18169-9/21740478_1962543840700146_2272048697512930599_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=973b4a&_nc_ohc=sQOePS2m-6cAX8TY16H&_nc_ht=scontent.fvix13-1.fna&oh=63e3a7289e5fe7ffcde1fe35aca006b6&oe=61CE0266";
  var img9 = "https://www.vitrinerio.com.br/imagens/anuncios/160418054300/4307_duda-racoes-casa-de-racoes.png";
  var img10 = "https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2F2017%2F03%2F31%2F15%2FLogo-e-Cartao-de-Visita-207221_385802_154006485_1428184305.jpg";
  var img11 = "https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2F2017%2F03%2F31%2F15%2FLogo-e-Cartao-de-Visita-207221_385802_154006485_1428184305.jpg";

  List<Loja> lojas = [];
  Loja loja1 = Loja(name: 'Amiguinho Pet', describe: 'Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
  lojas.add(loja1);
  Loja loja2 = Loja(name: 'Instinto Animal', describe: 'Ração, vermifunficidas', reputation: '5.0',logoUrl: img2);
  lojas.add(loja2);
  Loja loja3 = Loja(name: 'Cuidado Canino', describe: 'Ração, Acessórios', reputation: '5.0',logoUrl: img3);
  lojas.add(loja3);
  Loja loja4 = Loja(name: 'Amor Felino', describe: 'Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img4);
  lojas.add(loja4);
  Loja loja5 = Loja(name: 'Pet Top', describe: 'Ração, Acessórios', reputation: '5.0',logoUrl: img5);
  lojas.add(loja5);
  Loja loja6 = Loja(name: 'Amigo Pet', describe: 'Ração, vermifunficidas', reputation: '5.0',logoUrl: img6);
  lojas.add(loja6);
  Loja loja7 = Loja(name: 'Companheirinho', describe: 'vermifunficidas', reputation: '5.0',logoUrl: img7);
  lojas.add(loja7);
  Loja loja8 = Loja(name: 'Patrulha Canina', describe: 'Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img5);
  lojas.add(loja8);
  Loja loja9 = Loja(name: 'Vida Felina', describe: 'Ração, Acessórios', reputation: '5.0',logoUrl: img4);
  lojas.add(loja9);
  Loja loja10 = Loja(name: 'Ração Top', describe: 'Ração e vermifunficidas', reputation: '5.0',logoUrl: img3);
  lojas.add(loja10);
  Loja loja11 = Loja(name: 'Amanhecer', describe: 'Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img2);
  lojas.add(loja11);
  return Container(
    color: AppConfig.cinzaBkg,
    child: SingleChildScrollView(
        child: Column(
            children: [
              BannerCarrosel(context, sizeWidth * 0.95, sizeHeight * 0.2),
              FilterBar(context, fragmentType, sizeWidth),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(55), topRight: Radius.circular(55))),
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: lojas.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LojaHome(contato: "27 997232460",))),
                          child: CardLoja(
                              name: lojas.elementAt(index).name,
                              describe: lojas.elementAt(index).describe,
                              reputation: lojas.elementAt(index).reputation,
                              logoUrl: lojas.elementAt(index).logoUrl),
                        );
                      },
                    )
                  ],
                ),
              ),
            ]
        )
    ),
  );


}
