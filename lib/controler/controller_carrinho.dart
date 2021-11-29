import 'package:market_pet/models/product.dart';

class ControllerCarrinho{

  static List<Product> list=[];

  static num getTotalPrice(){
    num total = 0;
    for(Product p in list){
      total += p.price * p.qtd;
    }
    return total;
  }

  static num getTotalItens(){
    num total = 0;
    for(Product p in list){
      // if(p.qtd <1) list.removeWhere((element) => element.title == p.title);
      total += p.qtd;
    }
    return total;
  }

}