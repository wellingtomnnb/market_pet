import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconFilter{
  Widget Icon({context, String icon, Color color, sizeWidth, String nameFilter}){
    return Padding(padding: EdgeInsets.all(10),
      child: Column(children: [
        Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                width: sizeWidth > 65 ? sizeWidth * 0.14 : 65,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: color),
              ),
              Container(//clipBehavior: Clip.hardEdge,
                height: 45,
                child: Image.asset(icon),
              )
            ]
        ),
        Text(nameFilter)
      ],
      )
    );
  }
}