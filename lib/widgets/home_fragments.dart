import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:market_pet/controler/app_config.dart';
import 'package:market_pet/models/Loja.dart';
import 'package:market_pet/models/fragments.dart';
import 'package:market_pet/widgets/banner_carrossel.dart';
import 'package:market_pet/widgets/filter_bar.dart';
import 'package:market_pet/widgets/icon_filter.dart';

import 'card_loja.dart';

class HomeFragments{

  Widget fragment(context, Fragments fragmentType, sizeWidth, sizeHeight){
    var img = "https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2F2017%2F03%2F31%2F15%2FLogo-e-Cartao-de-Visita-207221_385802_154006485_1428184305.jpg";

    List<Loja> lojas = [];
    Loja loja1 = Loja(name: 'Clubinho Pet', describe: 'Ração, Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
    lojas.add(loja1);
    Loja loja2 = Loja(name: 'Clubinho Animal', describe: 'Ração, Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
    lojas.add(loja2);
    Loja loja3 = Loja(name: 'Clubinho Canino', describe: 'Ração, Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
    lojas.add(loja3);
    Loja loja4 = Loja(name: 'Clubinho Felino', describe: 'Ração, Acessórios e vermifunficidas', reputation: '5.0',logoUrl: img);
    lojas.add(loja4);
    final items = List<String>.generate(10000, (i) => "Item $i");
/*
    return  Container(
        color: AppConfig.cinzaBkg,
        child: SingleChildScrollView(
        child:*/
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
                          return CardLoja(name: lojas.elementAt(index).name, describe: lojas.elementAt(index).describe, reputation: lojas.elementAt(index).reputation, logoUrl: lojas.elementAt(index).logoUrl);
                        },
                      )
                    ],
                  ),
                /*Column(
                      children: [
                        SizedBox(height: 16),
                        //CardLoja(name: lojas.elementAt(index).name, describe: lojas.elementAt(index).describe, reputation: lojas.elementAt(index).reputation, logoUrl: lojas.elementAt(index).logoUrl),
                        Card(
                            elevation: 0,
                            color: Colors.white,
                            child: Row(children: [
                              Padding(padding: EdgeInsets.all(15),
                                child: Column(children: [
                                  Container(width: 50, height: 50, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),),
                                ],),),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                Text("Casa de Ração Pet+", style: TextStyle(fontSize: 16),),
                                Text("Ração, Acessórios e vermifunficidas", style: TextStyle(fontSize: 11))
                              ],),
                              Expanded(child: Padding(padding: EdgeInsets.only(right: 10),child:
                              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                Icon(Icons.star, size: 17, color: Colors.amber,),
                                Text("4.7", style: TextStyle(color: Colors.amber),)

                              ],)
                              ))
                            ],
                            )
                        ),
                        Card(
                            elevation: 0,
                            color: Colors.white,
                            child: Row(children: [
                              Padding(padding: EdgeInsets.all(15),
                                child: Column(children: [
                                  Container(width: 50, height: 50, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),),
                                ],),),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                Text("Casa de Ração Pet+", style: TextStyle(fontSize: 16),),
                                Text("Ração, Acessórios e vermifunficidas", style: TextStyle(fontSize: 11))
                              ],),
                              Expanded(child: Padding(padding: EdgeInsets.only(right: 10),child:
                              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                Icon(Icons.star, size: 17, color: Colors.amber,),
                                Text("4.7", style: TextStyle(color: Colors.amber),)

                              ],)
                              ))
                            ],
                            )
                        ),
                        Card(
                            elevation: 0,
                            color: Colors.white,
                            child: Row(children: [
                              Padding(padding: EdgeInsets.all(15),
                                child: Column(children: [
                                  Container(width: 50, height: 50, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),),
                                ],),),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                Text("Casa de Ração Pet+", style: TextStyle(fontSize: 16),),
                                Text("Ração, Acessórios e vermifunficidas", style: TextStyle(fontSize: 11))
                              ],),
                              Expanded(child: Padding(padding: EdgeInsets.only(right: 10),child:
                              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                Icon(Icons.star, size: 17, color: Colors.amber,),
                                Text("4.7", style: TextStyle(color: Colors.amber),)

                              ],)
                              ))
                            ],
                            )
                        ),
                        Card(
                            elevation: 0,
                            color: Colors.white,
                            child: Row(children: [
                              Padding(padding: EdgeInsets.all(15),
                                child: Column(children: [
                                  Container(width: 50, height: 50, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),),
                                ],),),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                Text("Casa de Ração Pet+", style: TextStyle(fontSize: 16),),
                                Text("Ração, Acessórios e vermifunficidas", style: TextStyle(fontSize: 11))
                              ],),
                              Expanded(child: Padding(padding: EdgeInsets.only(right: 10),child:
                              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                Icon(Icons.star, size: 17, color: Colors.amber,),
                                Text("4.7", style: TextStyle(color: Colors.amber),)

                              ],)
                              ))
                            ],
                            )
                        ),
                        Card(
                            elevation: 0,
                            color: Colors.white,
                            child: Row(children: [
                              Padding(padding: EdgeInsets.all(15),
                                child: Column(children: [
                                  Container(width: 50, height: 50, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),),
                                ],),),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                Text("Casa de Ração Pet+", style: TextStyle(fontSize: 16),),
                                Text("Ração, Acessórios e vermifunficidas", style: TextStyle(fontSize: 11))
                              ],),
                              Expanded(child: Padding(padding: EdgeInsets.only(right: 10),child:
                              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                Icon(Icons.star, size: 17, color: Colors.amber,),
                                Text("4.7", style: TextStyle(color: Colors.amber),)

                              ],)
                              ))
                            ],
                            )
                        ),
                        Card(
                            elevation: 0,
                            color: Colors.white,
                            child: Row(children: [
                              Padding(padding: EdgeInsets.all(15),
                                child: Column(children: [
                                  Container(width: 50, height: 50, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),),
                                ],),),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                Text("Casa de Ração Pet+", style: TextStyle(fontSize: 16),),
                                Text("Ração, Acessórios e vermifunficidas", style: TextStyle(fontSize: 11))
                              ],),
                              Expanded(child: Padding(padding: EdgeInsets.only(right: 10),child:
                              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                Icon(Icons.star, size: 17, color: Colors.amber,),
                                Text("4.7", style: TextStyle(color: Colors.amber),)

                              ],)
                              ))
                            ],
                            )
                        ),
                        Card(
                            elevation: 0,
                            color: Colors.white,
                            child: Row(children: [
                              Padding(padding: EdgeInsets.all(15),
                                child: Column(children: [
                                  Container(width: 50, height: 50, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),),
                                ],),),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                Text("Casa de Ração Pet+", style: TextStyle(fontSize: 16),),
                                Text("Ração, Acessórios e vermifunficidas", style: TextStyle(fontSize: 11))
                              ],),
                              Expanded(child: Padding(padding: EdgeInsets.only(right: 10),child:
                              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                Icon(Icons.star, size: 17, color: Colors.amber,),
                                Text("4.7", style: TextStyle(color: Colors.amber),)

                              ],)
                              ))
                            ],
                            )
                        ),
                        Card(
                            elevation: 0,
                            color: Colors.white,
                            child: Row(children: [
                              Padding(padding: EdgeInsets.all(15),
                                child: Column(children: [
                                  Container(width: 50, height: 50, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),),
                                ],),),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                Text("Casa de Ração Pet+", style: TextStyle(fontSize: 16),),
                                Text("Ração, Acessórios e vermifunficidas", style: TextStyle(fontSize: 11))
                              ],),
                              Expanded(child: Padding(padding: EdgeInsets.only(right: 10),child:
                              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                Icon(Icons.star, size: 17, color: Colors.amber,),
                                Text("4.7", style: TextStyle(color: Colors.amber),)

                              ],)
                              ))
                            ],
                            )
                        ),
                      ]
                  )*/
              ),
            ]
        )
      ),
    );
  }
}