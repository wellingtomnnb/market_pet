import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_pet/controler/app_config.dart';

import 'icon_filter.dart';

Widget FilterBar(context, fragmentType, sizeWidth){
  return Container(
    color: AppConfig.cinzaBkg,
    child: SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconFilter(context: context,
                  icon: fragmentType.iconFilter1,
                  color: Colors.greenAccent,
                  sizeWidth: sizeWidth,
                  nameFilter: fragmentType.nameFilter1
              ),
              IconFilter(context: context,
                  icon: fragmentType.iconFilter2,
                  color: Colors.purpleAccent,
                  sizeWidth: sizeWidth,
                  nameFilter: fragmentType.nameFilter1
              ),
              IconFilter(context: context,
                  icon: fragmentType.iconFilter3,
                  color: Colors.green,
                  sizeWidth: sizeWidth,
                  nameFilter: fragmentType.nameFilter1
              ),
              IconFilter(context: context,
                  icon: fragmentType.iconFilter4,
                  color: Colors.yellow,
                  sizeWidth: sizeWidth,
                  nameFilter: fragmentType.nameFilter1
              ),
              IconFilter(context: context,
                  icon: fragmentType.iconFilter5,
                  color: Colors.pinkAccent,
                  sizeWidth: sizeWidth,
                  nameFilter: fragmentType.nameFilter1
              ),
            ]
        )
    ),
  );
}