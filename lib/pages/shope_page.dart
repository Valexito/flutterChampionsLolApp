import 'package:flutter/material.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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


        
      ],
    );
  }
}