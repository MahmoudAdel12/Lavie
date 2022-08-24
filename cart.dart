import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 15,),
            Row(
              children:[
               IconButton(onPressed: (){
                Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_outlined)),
               Expanded(
                 child: Text(
                      "My Cart",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 1

                    ),
                  ),

               ),
              ]
            ),
            Card(
              margin: EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset("assets/Rectangle15.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Cactus plant",),
                      Text("200"),
                    ],)
                ],
              ),

            )


          ],
        ),
      ),
    );
  }
}

