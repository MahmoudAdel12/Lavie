
import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/Data/sign_up_data/AuthResponse.dart';
import 'package:login/shared.dart';

import 'home.dart';
import 'login_screen.dart';

class LoginProvider with ChangeNotifier{



  Widget column =Column(
      children :[
        Container(
          padding: const EdgeInsets.all(15),
          child: TextFormField(

            keyboardType: TextInputType.emailAddress,
            onChanged: (String value) {
              print(value);
            },
            onFieldSubmitted: (String value) {
              print(value);
            },
            decoration: const InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
        ), // <-------
        Container(
          padding: const EdgeInsets.all(15),
          child: TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            onChanged: (String val) {
              print(val);
            },
            onFieldSubmitted: (String val) {
              print(val);
            },
            decoration: const InputDecoration(
                suffix: Icon(Icons.remove_red_eye),
                labelText: "Password",
                border: OutlineInputBorder()),
          ),
        ), // <-------
        const Divider(
          thickness: 0.01,
        ),
        Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: FloatingActionButton(
                    onPressed: () {
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.green,

                    child: const Text("Login")),
              ),
            ]),
        const Divider(
          thickness: 0.01,
        ),
        Container(

          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                child: Divider(height: 15),
              ),
              Text("or continue with"),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {},
              child: Image.asset("assets/Google.png"),
            ),
            MaterialButton(
              onPressed: () {},
              child: Image.asset("assets/Facebook.png"),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/buttomdown.png"),
          ],
        ),
      ]
  );



  void getLoginPart (){
    column= SizedBox(

      child: Column(
          children :[
            Container(
              padding: const EdgeInsets.all(15),
              child: TextFormField(

                keyboardType: TextInputType.emailAddress,
                onChanged: (String value) {
                  print(value);
                },
                onFieldSubmitted: (String value) {
                  print(value);
                },
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
            ), // <-------
            Container(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onChanged: (String val) {
                  print(val);
                },
                onFieldSubmitted: (String val) {
                  print(val);
                },
                decoration: const InputDecoration(
                    suffix: Icon(Icons.remove_red_eye),
                    labelText: "Password",
                    border: OutlineInputBorder()),
              ),
            ), // <-------
            const Divider(
              thickness: 0.01,
            ),
            Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(

                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: FloatingActionButton(
                        onPressed: () {

                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.green,

                        child: const Text("Login")),
                  ),
                ]),
            const Divider(
              thickness: 0.01,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    child: Divider(height: 15),
                  ),
                  Text("or continue with"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Image.asset("assets/Google.png"),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Image.asset("assets/Facebook.png"),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/buttomdown.png"),
              ],
            ),
          ]
      ),
    );

  }

  void getSignUpPart(){
    column =Column(
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 5),

              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "First Name",
                    border: OutlineInputBorder()),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "E-mail",
                    border: OutlineInputBorder()),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder()),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "Confirm password",
                    border: OutlineInputBorder()),
              ),
            ),
            Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(

                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: FloatingActionButton(
                        onPressed: () {
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.green,

                        child: const Text("Login")),
                  ),
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/buttomdown.png"),
              ],
            ),
          ],
        )

      ],
    );
  }
  static int userId = 0;
  static String email = "";
  static String password = "";
  static String fistName = "";
  static String lastName = "";
  static String confirmPassword = "+";
  static var emailController = TextEditingController();
  static var passwordController = TextEditingController();





  bool correctDetector(){
    if(password ==confirmPassword){
      return true;
    }
    else{
      return false;
    }
  }



  static String getValidation(String value){
    return value;
  }

  String getInCorrect(){
    return "Try again !";

  }

  static void setFistName(String value) {

    fistName = value;
  }


  static String getFirstName(){
    return fistName;
  }

  static void setLastName(String value){
    lastName = value;
  }

  static String getLastName(String value){
    return lastName;
  }

  static void setEmail(String value) async{
    email = value;

  }
  static String getEmail(){
    return email;

  }

  static void setPassword(String value){
    password = value;

  }

  static String getPassword(){
    return password ;

  }
  static void setConfirmPassword(String value){
    confirmPassword = value;

  }

  static String getConfirmPassword(){
    return confirmPassword;
  }





  static void login(email,password,context) async{
    try{
      var response = await Dio().post(
          "https://lavie.orangedigitalcenteregypt.com/api/v1/auth/signin",
          data: {
            "password": password,
            "email": email
          }
      ).then((value) {
        AuthResponse res = AuthResponse.fromJson(value.data);

        AppConstants.fistName = res.data!.user!.firstName;
        AppConstants.lastName = res.data!.user!.lastName;
        AppConstants.email = res.data!.user!.email;
        print(AppConstants.email);
      });
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
    }on DioError catch(e){
      // print(e);
      // print(e.response!.data['message']);
      // inValidText = await e.response!.data['message'];

      //
      // getValidation("${ e.response!.data['message']}");
      if(e.message == 'Http status error [409]'){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('account already registered')));
      }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.response?.data['message'])));

    }





}

  static void signUp(firstName,lastName,email,password,context) async{
    try{
      var response =await Dio().post("https://lavie.orangedigitalcenteregypt.com/api/v1/auth/signup",
      data:{
        "firstName": fistName,
        "lastName": lastName,
        "email": email,
        "password": password
      }
      );

    }on DioError catch(e){
      if(e.message == 'Http status error [409]'){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('account already registered')));
      }
      // if(password != confirmPassword){
      //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('password not like confirm password')));
      // }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.response?.data['message'])));
      print((e.response?.data['message']));


    }
  }



}

