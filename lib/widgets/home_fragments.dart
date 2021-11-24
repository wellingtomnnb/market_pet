import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:market_pet/controler/app_config.dart';
import 'package:market_pet/models/Loja.dart';
import 'package:market_pet/models/fragments.dart';
import 'file:///C:/Users/Wellington/AndroidStudioProjects/market_pet/lib/pages/home_loja.dart';
import 'package:market_pet/widgets/banner_carrossel.dart';
import 'package:market_pet/widgets/filter_bar.dart';
import 'package:market_pet/widgets/icon_filter.dart';

import 'card_loja.dart';

Widget HomeFragments(context, Fragments fragmentType, sizeWidth, sizeHeight){
  var img = "https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2F2017%2F03%2F31%2F15%2FLogo-e-Cartao-de-Visita-207221_385802_154006485_1428184305.jpg";

  List<Loja> lojas = [];
  Loja loja1 = Loja(name: 'dscd Pet', describe: 'Ração, Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
  lojas.add(loja1);
  Loja loja2 = Loja(name: 'sdcsc Animal', describe: 'Ração, Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
  lojas.add(loja2);
  Loja loja3 = Loja(name: 'sdccsc Canino', describe: 'Ração, Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
  lojas.add(loja3);
  Loja loja4 = Loja(name: 'scscdc Felino', describe: 'Ração, Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
  lojas.add(loja4);
  Loja loja5 = Loja(name: 'scscdc Felino', describe: 'Ração, Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
  lojas.add(loja5);
  Loja loja6 = Loja(name: 'scscdc Felino', describe: 'Ração, Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
  lojas.add(loja6);
  Loja loja7 = Loja(name: 'scscdc Felino', describe: 'Ração, Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
  lojas.add(loja7);
  Loja loja8 = Loja(name: 'scscdc Felino', describe: 'Ração, Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
  lojas.add(loja8);
  Loja loja9 = Loja(name: 'scscdc Felino', describe: 'Ração, Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
  lojas.add(loja9);
  Loja loja10 = Loja(name: 'scscdc Felino', describe: 'Ração, Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
  lojas.add(loja10);
  Loja loja11 = Loja(name: 'scscdc Felino', describe: 'Ração, Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
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
