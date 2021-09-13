import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:market_pet/controler/app_config.dart';
import 'package:market_pet/pages/home.dart';
import 'package:market_pet/pages/start_page.dart';

void main() {
  runApp(MaterialApp(
      home: StartPage(),
      debugShowCheckedModeBanner: false //remove borda de debug
  ));
}
/*

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smooth Page Indicator Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  var bannerUrl = 'https://staticpetz.stoom.com.br/fotos/Home_Desk_1900x390_Ganhe10OFF-unidade-Fortekor.gif';
  var bannerUrl2 = 'https://staticpetz.stoom.com.br/fotos/Home_Desk_1900x390_Anivers%C3%A1rio_Album_2021_08.png';
  var bannerUrl3 = 'https://petdays.vteximg.com.br/arquivos/ids/157860/banner_central_delivery_mobile.jpg?v=637514283619270000';

  banners() => [bannerUrl, bannerUrl2, bannerUrl3];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: BannerCarrosel()
    );
  }

  Widget BannerCarrosel(sizeWidth, sizeHeight){
    final pages = List.generate(
      banners().length, (index) => Padding(
      padding: EdgeInsets.all(5),
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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: sizeWidth(context: context, percentSize: 90),
              height: sizeHeight(context: context, percentSize: 20),
              child: PageView.builder(
                controller: controller,
                itemBuilder: (_, index) {
                  return pages[index % pages.length];
                },
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: JumpingDotEffect(
                  activeDotColor: AppConfig.vermelhoIcone,
                  dotHeight: 10,
                  dotWidth: 10,
                  jumpScale: .7,
                  verticalOffset: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
*/

