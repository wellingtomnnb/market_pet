import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CardLoja({String name = 'Sem Nome', String describe = '', String reputation = '', String logoUrl = ''}){
  return Card(
      elevation: 0,
      color: Colors.white,
      child: Row(
        children: [
          logoUrl == '' ?
            Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  width: 50, height: 50,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
                )
            )
            : Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                clipBehavior: Clip.antiAlias,
                width: 50, height: 50,
                decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
                //https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2F2017%2F03%2F31%2F15%2FLogo-e-Cartao-de-Visita-207221_385802_154006485_1428184305.jpg
                child: Image.network(logoUrl)
              )
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(fontSize: 16, fontFamily: "Quicksand", fontWeight: FontWeight.w600),),
              Text(describe, style: TextStyle(fontSize: 10, fontFamily: "Quicksand", fontWeight: FontWeight.w600))
            ]
          ),
          if(reputation.isNotEmpty) Expanded(
              child: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.star, size: 17, color: Colors.amber,),
                        Text(reputation, style: TextStyle(color: Colors.amber, fontFamily: "Quicksand", fontWeight: FontWeight.w600),)
                      ]
                  )
              )
          )
        ],
      )
  );
}