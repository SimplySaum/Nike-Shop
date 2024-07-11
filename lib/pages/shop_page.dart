import 'package:flutter/material.dart';
import 'package:nike_shop_app_new/Components/shoe_tile.dart';
import 'package:nike_shop_app_new/models/shoe.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class ShopPage extends StatefulWidget {


  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemCart(shoe);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(

        backgroundColor: Colors.blue[300],

        title: Text("Successfully Added", style: TextStyle (
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 24
        ),),
        content: Text('Check your cart', style: TextStyle(color: Colors.white, fontSize: 15),),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        children: [

          //search bar
          //search bar
          Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8)
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Search"),
                  Icon(Icons.search,
                    color: Colors.grey,)
                ],
              )



          ),


          //message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Text("Everyone flies.. some fly longer than the others", style: TextStyle(color: Colors.grey[600]),),
          ),

          //hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const[
                Text("Hot Picks 🔥", style: TextStyle (fontWeight: FontWeight.bold, fontSize: 24),),
                Text("See more", style: TextStyle( color: Colors.blueAccent, fontWeight: FontWeight.bold),)
              ],
            ),
          ),

          const SizedBox(height: 10),

          Expanded(child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              //create shoe
              Shoe shoe = value.getShoeList()[index];
              return ShoeTile(
                shoe: shoe,
                onTap: ()=> addShoeToCart(shoe),
              );
            },),),

          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(color: Colors.white,),
          )

        ],
      ),
    ));
  }
}
