import 'package:flutter/material.dart';
import 'package:nike_shop_app_new/pages/Utils.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('lib/images/nike_logo.png',
                  height: 280,
                  width: 250,
                ),
              ),


              const SizedBox(height: 48),


              //title
              Text(
                  "Just Do It",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),


              //sub title

              Text(
                "Brand new sneakers and custom kicks made with premium quality",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
                ),
                textAlign: TextAlign.center,
              ),


              const SizedBox(height: 48),


              //start now button

              GestureDetector(
                onTap: () => Navigator.pushNamed(context, MyRoutes.HomeRoute),
                child: Container(

                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)
                  ),

                  padding: EdgeInsets.all(25),

                  child: Center(
                    child: Text(
                        "Shop Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                  ),
                ),
              )


            ],
          ),
        ),
      ),

    );
  }
}
