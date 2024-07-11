import 'package:flutter/cupertino.dart';
import 'package:nike_shop_app_new/models/shoe.dart';

class Cart extends ChangeNotifier{

  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(name: 'Zoom Freak',
        price: '236',
        imagePath: 'lib/images/AirOne.png',
        description: 'Something clever written which basically makes no sense'),

    Shoe(name: 'Air Jordan',
        price: '236',
        imagePath: 'lib/images/Shoe2.png',
        description: 'Something clever written which basically makes no sense'),

    Shoe(name: 'KD Treys',
        price: '236',
        imagePath: 'lib/images/AirOne.png',
        description: 'Something clever written which basically makes no sense'),

    Shoe(name: 'Kyrie 6',
        price: '236',
        imagePath: 'lib/images/Shoe4.jpg',
        description: 'Something clever written which basically makes no sense')
  ];


  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of items for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart()
  {
    return userCart;
  }

  //adding items to cart
  void addItemCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //removing from cart
  void removeItemCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

}