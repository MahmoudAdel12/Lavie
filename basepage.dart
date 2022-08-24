// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/Notification.dart';
import 'package:login/blogs.dart';
import 'package:login/home.dart';
import 'package:login/profile_screen.dart';
import 'package:login/scan_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'cart.dart';



class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}
List<Widget> _widgetOptions = [
  const Text("data"),
  const ScanPage(),
  Home(),
  const NotificationPage(),
  const Profile()
];
int gardeniaNum = 1;
int spiderPlanetNum = 1 ;

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: ListView(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  child: Image.asset("assets/Group1000003301.png"),
                )
              ],
            ),
            ListTile(
              title: Container(
                child: TextFormField(
                  autocorrect: true,
                  onTap: () {
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.search),
                    labelText: "Search",
                    filled: true,
                    fillColor: Colors.grey[100],
                  ),
                ),
              ),

              trailing:Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Cart()));
                    }, icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: 20,
                )),
              ) ,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text("All"),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(1),
                    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text("Planets"),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(1),
                    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text("Seeds"),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(1),
                    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text("Tools"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text("Tools"),
                    ),
                  ),
                ],
              ),
            ),
            Row(mainAxisSize: MainAxisSize.max, children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/firstcard.png"),
                                Row(children: [
                                  Container(
                                    color: Colors.grey[100],
                                    child: SizedBox(
                                      width: 25,
                                      height: 20,
                                      child: FloatingActionButton(
                                          backgroundColor: Colors.grey[300],
                                          onPressed: () {
                                            setState(() {
                                              gardeniaNum--;
                                            });
                                          },
                                          child: const Text(
                                            "-",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(color: Colors.black),
                                          )
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                    height: 15,
                                    child: Center(
                                      child: Text(
                                        "$gardeniaNum",
                                        textAlign: TextAlign.end,


                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 3),
                                    color: Colors.grey[100],
                                    child: SizedBox(
                                      width: 25,
                                      height: 20,
                                      child: FloatingActionButton(
                                          backgroundColor: Colors.grey[300],
                                          onPressed: () {
                                            setState(() {
                                              gardeniaNum++;
                                            });
                                          },
                                          child: const Text(
                                            "+",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          )
                                      ),
                                    ),
                                  ),
                                ])
                              ]),
                          const Text(
                            "GARDENIA PLANT",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Divider(),
                          const Text(
                            "70 EGP",
                            textAlign: TextAlign.start,
                          ),
                          Row(mainAxisSize: MainAxisSize.max, children: [
                            const VerticalDivider(),
                            Material(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
                              child: MaterialButton(


                                onPressed: () {

                                },
                                child:  const Text(
                                  "Add To Cart",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                                color: Colors.green,
                              ),
                            ),
                            const VerticalDivider()
                          ])
                        ],
                      ),
                    ),
                  ],
                ),

              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/firstcard.png"),
                                Row(children: [
                                  Container(
                                    color: Colors.grey[100],
                                    child: SizedBox(
                                      width: 25,
                                      height: 20,
                                      child: FloatingActionButton(
                                          backgroundColor: Colors.grey[300],
                                          onPressed: () {
                                            setState(() {
                                              gardeniaNum--;
                                            });
                                          },
                                          child: const Text(
                                            "-",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(color: Colors.black),
                                          )
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: SizedBox(
                                      width: 15,
                                      height: 15,
                                      child: Text(
                                        "$gardeniaNum",
                                        textAlign: TextAlign.center,



                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 3),
                                    color: Colors.grey[100],
                                    child: SizedBox(
                                      width: 25,
                                      height: 20,
                                      child: FloatingActionButton(
                                          backgroundColor: Colors.grey[300],

                                          onPressed: () {
                                            setState(() {
                                              gardeniaNum++;
                                            });
                                          },
                                          child: const Text(
                                            "+",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          )
                                      ),
                                    ),
                                  ),
                                ])
                              ]),
                          const Text(
                            "GARDENIA PLANT",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Divider(),
                          const Text(
                            "70 EGP",
                            textAlign: TextAlign.start,
                          ),
                          Row(mainAxisSize: MainAxisSize.max,
                              children: [
                                const VerticalDivider(),
                                Material(
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
                                  child: MaterialButton(


                                    onPressed: () {

                                    },
                                    child: const Text(
                                      "Add To Cart",
                                      style: TextStyle(
                                          color: Colors.white
                                      ),
                                    ),
                                    color: Colors.green,
                                  ),
                                ),
                                const VerticalDivider()
                              ])
                        ],
                      ),
                    ),
                  ],
                ),

              )

            ]),
            Row(mainAxisSize: MainAxisSize.max, children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/firstcard.png"),
                                Row(children: [
                                  Container(
                                    color: Colors.grey[100],
                                    child: SizedBox(
                                      width: 25,
                                      height: 20,
                                      child: FloatingActionButton(
                                          backgroundColor: Colors.grey[300],
                                          onPressed: () {
                                            setState(() {
                                              gardeniaNum--;
                                            });
                                          },
                                          child: const Text(
                                            "-",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(color: Colors.black),
                                          )
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                    height: 15,
                                    child: Center(
                                      child: Text(
                                        "$gardeniaNum",
                                        textAlign: TextAlign.end,


                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 3),
                                    color: Colors.grey[100],
                                    child: SizedBox(
                                      width: 25,
                                      height: 20,
                                      child: FloatingActionButton(
                                          backgroundColor: Colors.grey[300],
                                          onPressed: () {
                                            setState(() {
                                              gardeniaNum++;
                                            });
                                          },
                                          child: const Text(
                                            "+",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          )
                                      ),
                                    ),
                                  ),
                                ])
                              ]),
                          const Text(
                            "GARDENIA PLANT",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Divider(),
                          const Text(
                            "70 EGP",
                            textAlign: TextAlign.start,
                          ),
                          Row(mainAxisSize: MainAxisSize.max, children: [
                            const VerticalDivider(),
                            Material(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
                              child: MaterialButton(


                                onPressed: () {

                                },
                                color: Colors.green,
                                child:  const Text(
                                  "Add To Cart",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                            const VerticalDivider()
                          ])
                        ],
                      ),
                    ),
                  ],
                ),

              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/firstcard.png"),
                                Row(children: [
                                  Container(
                                    color: Colors.grey[100],
                                    child: SizedBox(
                                      width: 25,
                                      height: 20,
                                      child: FloatingActionButton(
                                          backgroundColor: Colors.grey[300],
                                          onPressed: () {
                                            setState(() {
                                              gardeniaNum--;
                                            });
                                          },
                                          child: const Text(
                                            "-",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(color: Colors.black),
                                          )
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: SizedBox(
                                      width: 15,
                                      height: 15,
                                      child: Text(
                                        "$gardeniaNum",
                                        textAlign: TextAlign.center,



                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 3),
                                    color: Colors.grey[100],
                                    child: SizedBox(
                                      width: 25,
                                      height: 20,
                                      child: FloatingActionButton(
                                          backgroundColor: Colors.grey[300],

                                          onPressed: () {
                                            setState(() {
                                              gardeniaNum++;
                                            });
                                          },
                                          child: const Text(
                                            "+",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          )
                                      ),
                                    ),
                                  ),
                                ])
                              ]),
                          const Text(
                            "GARDENIA PLANT",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Divider(),
                          const Text(
                            "70 EGP",
                            textAlign: TextAlign.start,
                          ),
                          Row(mainAxisSize: MainAxisSize.max,
                              children: [
                                const VerticalDivider(),
                                Material(
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
                                  child: MaterialButton(


                                    onPressed: () {

                                    },
                                    child: const Text(
                                      "Add To Cart",
                                      style: TextStyle(
                                          color: Colors.white
                                      ),
                                    ),
                                    color: Colors.green,
                                  ),
                                ),
                                const VerticalDivider()
                              ])
                        ],
                      ),
                    ),
                  ],
                ),

              )

            ]),
            Row(mainAxisSize: MainAxisSize.max, children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/firstcard.png"),
                                Row(children: [
                                  Container(
                                    color: Colors.grey[100],
                                    child: SizedBox(
                                      width: 25,
                                      height: 20,
                                      child: FloatingActionButton(
                                          backgroundColor: Colors.grey[300],
                                          onPressed: () {
                                            setState(() {
                                              gardeniaNum--;
                                            });
                                          },
                                          child: const Text(
                                            "-",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(color: Colors.black),
                                          )
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                    height: 15,
                                    child: Center(
                                      child: Text(
                                        "$gardeniaNum",
                                        textAlign: TextAlign.end,


                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 3),
                                    color: Colors.grey[100],
                                    child: SizedBox(
                                      width: 25,
                                      height: 20,
                                      child: FloatingActionButton(
                                          backgroundColor: Colors.grey[300],
                                          onPressed: () {
                                            setState(() {
                                              gardeniaNum++;
                                            });
                                          },
                                          child: const Text(
                                            "+",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          )
                                      ),
                                    ),
                                  ),
                                ])
                              ]),
                          const Text(
                            "GARDENIA PLANT",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Divider(),
                          const Text(
                            "70 EGP",
                            textAlign: TextAlign.start,
                          ),
                          Row(mainAxisSize: MainAxisSize.max, children: [
                            const VerticalDivider(),
                            Material(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
                              child: MaterialButton(


                                onPressed: () {

                                },
                                child: const Text(
                                  "Add To Cart",
                                  style: const TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                                color: Colors.green,
                              ),
                            ),
                            const VerticalDivider()
                          ])
                        ],
                      ),
                    ),
                  ],
                ),

              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/firstcard.png"),
                                Row(children: [
                                  Container(
                                    color: Colors.grey[100],
                                    child: SizedBox(
                                      width: 25,
                                      height: 20,
                                      child: FloatingActionButton(
                                          backgroundColor: Colors.grey[300],
                                          onPressed: () {
                                            setState(() {
                                              gardeniaNum--;
                                            });
                                          },
                                          child: const Text(
                                            "-",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(color: Colors.black),
                                          )
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: SizedBox(
                                      width: 15,
                                      height: 15,
                                      child: Text(
                                        "$gardeniaNum",
                                        textAlign: TextAlign.center,



                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 3),
                                    color: Colors.grey[100],
                                    child: SizedBox(
                                      width: 25,
                                      height: 20,
                                      child: FloatingActionButton(
                                          backgroundColor: Colors.grey[300],

                                          onPressed: () {
                                            setState(() {
                                              gardeniaNum++;
                                            });
                                          },
                                          child: const Text(
                                            "+",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          )
                                      ),
                                    ),
                                  ),
                                ])
                              ]),
                          const Text(
                            "GARDENIA PLANT",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Divider(),
                          const Text(
                            "70 EGP",
                            textAlign: TextAlign.start,
                          ),
                          Row(mainAxisSize: MainAxisSize.max,
                              children: [
                                const VerticalDivider(),
                                Material(
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
                                  child: MaterialButton(


                                    onPressed: () {

                                    },
                                    child: const Text(
                                      "Add To Cart",
                                      style: const TextStyle(
                                          color: Colors.white
                                      ),
                                    ),
                                    color: Colors.green,
                                  ),
                                ),
                                const VerticalDivider()
                              ])
                        ],
                      ),
                    ),
                  ],
                ),

              )

            ]),


          ],
        ),
      ),
    );
  }
}

