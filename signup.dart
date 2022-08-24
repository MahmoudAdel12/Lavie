import 'package:flutter/material.dart';
import 'package:login/login_provider.dart';
import 'package:login/login_screen.dart';
import 'package:provider/provider.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  factory SignUp.create()=>const SignUp();

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_)=>LoginProvider(),
        builder:(context,child)=>Scaffold(
          body: ListView(
              children: [Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset("assets/image68(Traced).png",height: 100),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/Group1000003301.png"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){
                              return SignUp();
                            }));
                          },


                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 20,
                                  decoration:TextDecoration.underline,
                                  color:Colors.green,
                                  decorationThickness:1
                              ),
                            ),
                          ),
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){
                              return Login();
                            }));

                          },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                          padding: const EdgeInsets.only(left: 15,right: 15,top: 5),
                          width: MediaQuery.of(context).size.width/2,
                          child: TextFormField(
                            onFieldSubmitted: (value){
                              LoginProvider.setFistName(value);
                            },
                            onChanged: (value){
                              LoginProvider.setFistName(value);
                            },
                            decoration: const InputDecoration(
                              labelText: "First Name",
                              border: OutlineInputBorder(),

                            ),
                          ),
                        ),
                          Container(
                            padding: const EdgeInsets.only(right: 15,top: 5),
                            width: MediaQuery.of(context).size.width/2,
                            child: TextFormField(
                              onFieldSubmitted: (value){
                                LoginProvider.setLastName(value);
                              },
                              onChanged: (value){
                                LoginProvider.setLastName(value);
                              },
                              decoration: const InputDecoration(
                                labelText: "Last Name",
                                border: OutlineInputBorder(),

                              ),
                            ),
                          )
                      ]),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                        child: TextFormField(
                          onFieldSubmitted: (value){
                            LoginProvider.setEmail(value);
                          },
                          onChanged: (value){
                            LoginProvider.setEmail(value);
                          },
                          decoration: const InputDecoration(
                              labelText: "E-mail",
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                        child: TextFormField(
                          obscureText: true,
                          onFieldSubmitted: (value){
                            LoginProvider.setPassword(value);
                          },
                          onChanged: (value){
                            LoginProvider.setPassword(value);
                          },
                          decoration: const InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder()
                          ),
                        ),
                      ),
                      Container (
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                        child: TextFormField(
                          onFieldSubmitted: (value){
                            LoginProvider.setConfirmPassword(value);
                          },
                          onChanged: (value){
                            LoginProvider.setConfirmPassword(value);
                          },
                          obscureText: true,
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
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: FloatingActionButton(
                                  onPressed: () async{
                                    LoginProvider.signUp(LoginProvider.fistName, LoginProvider.lastName, LoginProvider.email, LoginProvider.password, context);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Colors.green,
                                  child: const Text("Sign up")),
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
              ),
              ]
          ),
        ) ,
    );
  }
}
