import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:market_pet/controler/app_config.dart';
import 'package:market_pet/widgets/banner_carrossel.dart';
import 'package:market_pet/widgets/icon_filter.dart';

class HomeFragments{

  Widget fragment(context, fragmentType, sizeWidth, sizeHeight){
    return Container(
      color: AppConfig.cinzaBkg,
      child: SingleChildScrollView(
          child: Column(
              children: [
                BannerCarrossel().BannerCarrosel(context, sizeWidth * 0.95, sizeHeight * 0.2),
                Container(
                  color: AppConfig.cinzaBkg,
                  child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconFilter().Icon(context: context,
                          icon: fragmentType.iconFilter1,
                          color: Colors.pinkAccent,
                          sizeWidth: sizeWidth,
                          nameFilter: fragmentType.nameFilter1
                        ),
                        IconFilter().Icon(context: context,
                            icon: fragmentType.iconFilter1,
                            color: Colors.yellow,
                            sizeWidth: sizeWidth,
                            nameFilter: fragmentType.nameFilter1
                        ),
                        IconFilter().Icon(context: context,
                            icon: fragmentType.iconFilter1,
                            color: Colors.green,
                            sizeWidth: sizeWidth,
                            nameFilter: fragmentType.nameFilter1
                        ),
                        IconFilter().Icon(context: context,
                            icon: fragmentType.iconFilter1,
                            color: Colors.blue,
                            sizeWidth: sizeWidth,
                            nameFilter: fragmentType.nameFilter1
                        ),
                        IconFilter().Icon(context: context,
                            icon: fragmentType.iconFilter1,
                            color: Colors.greenAccent,
                            sizeWidth: sizeWidth,
                            nameFilter: fragmentType.nameFilter1
                        ),
                      ]
                    )
                  ),
                ),
                Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(55), topRight: Radius.circular(55))),
                    child: Column(
                      children: [
                        SizedBox(height: 16),
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
                    )
                ),
              ])
      ),
    );
  }
}