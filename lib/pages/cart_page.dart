import 'package:flutter/material.dart';
import 'package:lol_champions/components/cart_item.dart';
import 'package:lol_champions/models/cart.dart';
import 'package:lol_champions/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child)=>
     Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('My Champions', 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            //space between widgets
           const SizedBox(height: 10,),

            Expanded(child: ListView.builder( 
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index){
                //get individual shoe
                Shoe individualShoe = value.getUserCart()[index];


                //return list of items (shoes)
                return CartItem(shoe: individualShoe);

              },
              ),
             ),
          ],
        ),
    ),
    );
  }
}