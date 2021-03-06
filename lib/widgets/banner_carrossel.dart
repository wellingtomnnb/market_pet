import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:market_pet/controler/app_config.dart';

Widget BannerCarrosel(context, sizeWidth, sizeHeight){
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  var bannerUrl = 'http://www.marechalfloriano.es.gov.br/wp-content/uploads/2020/08/CRONOGRAMA-vacinacao-antirrabica-corrigido-min-768x384.jpg';
  var bannerUrl2 = 'http://www.marechalfloriano.es.gov.br/wp-content/uploads/2021/08/Campanha-de-Vacina%C3%A7%C3%A3o-Animal-2021-min.jpg';
  var bannerUrl3 = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGUEHzFYvnEwMv29VdqctCHZXzh7wHgH5-xw&usqp=CAU';

  banners() => [bannerUrl, bannerUrl2, bannerUrl3];
  final pages = List.generate(
    banners().length, (index) => Padding(
    padding: EdgeInsets.only(left: 5, right: 5, top: 5),
    child: CachedNetworkImage(
      imageUrl: banners()[index],
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
    ),
  ),
  );

  return Container(
    padding: EdgeInsets.only(top: 5),
    alignment: Alignment.topCenter,
    color: AppConfig.cinzaBkg,
    child: Column(
      children: [
        SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Container(
                width: sizeWidth,
                height: sizeHeight,
                child: PageView.builder(
                  controller: controller,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              )),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 7),
          alignment: Alignment.topCenter,
          child: SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: JumpingDotEffect(
              activeDotColor: AppConfig.vermelhoIcone,
              dotHeight: 8,
              dotWidth: 8,
              jumpScale: .7,
              verticalOffset: 15,
            ),
          ),
        ),
      ],
    ),
  );

}