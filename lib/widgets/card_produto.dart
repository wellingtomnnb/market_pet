import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:market_pet/controler/app_config.dart';

Widget CardProduto({String title = 'Sem Nome', double price = 0.0, String logoUrl = ''}) {
  return Card(
      elevation: 0,
      color: Colors.white,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(left: 10, right: 10),
              child: Container(
                child: Image.network(logoUrl, fit: BoxFit.cover,
                    loadingBuilder:(context, child, ImageChunkEvent? loadingProgress) {
                      if(loadingProgress == null) return child;
                      return Center(child: CircularProgressIndicator());
                    },
                    errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) => Image.asset('lib/assets/images/icon_product.png', fit: BoxFit.cover)
                ),
                // child: logoUrl.isNotEmpty ? Image.network(logoUrl) : Image.asset('lib/assets/images/icon_product.png', fit: BoxFit.cover)
                width: 80, height: 80,
              )
          ),
          Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 14, fontFamily: "Quicksand", fontWeight: FontWeight.w500)),
                Padding(padding: EdgeInsets.all(3)),
                Text('R\$ ${price>0? price.toString().replaceAll('.', ','): '-'}', style: TextStyle(fontSize: 18, fontFamily: "Quicksand", fontWeight: FontWeight.w800))
              ]
          )),
        ],
      )
  );
}