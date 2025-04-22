import 'package:flutter/material.dart';
import 'package:lol_champions/components/shoe_tile.dart';
import 'package:lol_champions/models/cart.dart';
import 'package:lol_champions/models/shoe.dart';
import 'package:provider/provider.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});


  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //METHODS

  //Add sho to cart

  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

   //Message shoe was added
    showDialog(
      context: context, 
      builder: (context)=>AlertDialog(
        title: Text('Successfully added'),
        content: Text('Check your library of chimpions'),
      ));
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder:(context, value, child) => Column(
      children: [

        //search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)
            ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Search', style: TextStyle(color: Colors.grey),),
              Icon(Icons.search),
            ],
          ),
        ),

        //message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Text('everyone flies.. some fly', style: TextStyle(color: Colors.black),),
        ),

        //hot pics
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Hot pics', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              Text('See all', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10,),
     // 👇 This makes it scrollable and visible
     //   And list of champs
     
          Expanded(
            child: ListView.builder(
              itemCount: 5, // set to a real list length later
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                //create shoe
                Shoe shoe = value.getShoeList()[index];
                //return shoe
                return ShoeTile(
                  shoe: shoe,
                  onTap: ()=> addShoeToCart(shoe),
                  );
              },
            ),
          ),
        Padding(
          padding: EdgeInsets.only(top: 25.0),
          child: Divider(
            color: Colors.white,
          ),
        ),
      ],
    ),
    );
  }
}