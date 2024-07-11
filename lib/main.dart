import 'package:flutter/material.dart';
import 'package:nike_shop_app_new/pages/Home_page.dart';
import 'package:nike_shop_app_new/pages/Intro_page.dart';
import 'package:nike_shop_app_new/pages/Utils.dart';
import 'package:provider/provider.dart';

import 'models/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) =>
          MaterialApp(

              debugShowCheckedModeBanner: false,
              home: IntroPage(),

              routes: {

                MyRoutes.HomeRoute: (context) => HomePage()
              }

          ),

    );
  }
}
