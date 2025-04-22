import 'package:flutter/material.dart';
import 'shoe.dart';

class Cart extends ChangeNotifier{
  //List of shoes
  List<Shoe> ShoeShop = [
    //Fizz
    Shoe(
      name: 'Champion Fizz', 
      price: '250', 
      imagePath: 'assets/fiz.jpg', 
      description: 'Lorem description ñolkdjhgtntlñseikgtrj  señoriktjs eñ spoedryt ñsoierth'),

    //Otro champ
     Shoe(
      name: 'Champion Yasuo', 
      price: '250', 
      imagePath: 'assets/yasuo.jpg', 
      description: 'Lorem description uj`pajg  `poaiehtrjñosldi  poñsidhfntoisert ñpoiaa'),

          //Otro champ
     Shoe(
      name: 'Champion Jinx', 
      price: '250', 
      imagePath: 'assets/jinx.jpg', 
      description: 'Lorem description'),

          //Otro champ
     Shoe(
      name: 'Champion Yasuo', 
      price: '250', 
      imagePath: 'assets/yasuo.jpg', 
      description: 'Lorem description'),

          //Otro champ
     Shoe(
      name: 'Champion Fizz', 
      price: '250', 
      imagePath: 'assets/fiz.jpg', 
      description: 'Lorem description'),
  ];



  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return ShoeShop;
  }

  //get cart 
  List<Shoe> getUserCart(){
    return userCart;
  }

//add items
void addItemToCart(Shoe shoe){
  userCart.add(shoe);
  notifyListeners();
}
//remove items from cart
void removeItemFromCart(Shoe shoe){
  userCart.remove(shoe);
  notifyListeners();
}

}