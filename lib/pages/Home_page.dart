import 'package:flutter/material.dart';
import 'package:nike_shop_app_new/Components/bottom_naviagation_bar.dart';
import 'package:nike_shop_app_new/Components/my_drawer.dart';
import 'package:nike_shop_app_new/pages/Cart_page.dart';
import 'package:nike_shop_app_new/pages/shop_page.dart';


class HomePage extends StatefulWidget {
   HomePage({super.key});
   @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  //this will update our selected index
  //when the user taps on navigation bar

  void navigationBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [

    //shop pages
    const ShopPage(),

    //cart pages
    const CartPage(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[300],


      bottomNavigationBar: MyBottomNaviagationBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) =>
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
              color: Colors.black,
            ),)
      ),
      drawer: MyDrawer(),

      body: _pages[_selectedIndex],



    );
  }
}

















