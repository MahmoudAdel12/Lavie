import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/home.dart';

class Blogs extends StatefulWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: IconButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  Home()),
          );
        },
            icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}
