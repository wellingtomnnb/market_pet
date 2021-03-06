import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget IconFilter({context, required String icon, required Color color, sizeWidth, required String nameFilter}){
  return Padding(padding: EdgeInsets.all(7),
      child: Column(children: [
        Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                width: sizeWidth > 65 ? sizeWidth * 0.15 : 65,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: color),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 40,
                child: Image.asset(icon),
              )
            ]
        ),
        Text(nameFilter, style: TextStyle(fontSize: 11, fontFamily: "Quicksand", fontWeight: FontWeight.w600))
      ],
      )
  );
}