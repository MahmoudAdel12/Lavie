import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'package:login/login_provider.dart';
import 'package:login/loginpart.dart';
import 'package:login/signup.dart';
import 'package:provider/provider.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


  @override
  Widget build(BuildContext context) {
    bool loginView = false;
    bool signView = false;

    return Scaffold(
          body: ListView(
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
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
                    if(loginView == false){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){
                        return const SignUp();
                      }));
                    loginView =true;
                    }

                  },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  ),
                  MaterialButton(onPressed: (){
                    if(loginView == false){

                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){
                        return const Login();
                      }));
                      loginView =false;
                    }

                  },

                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          decoration:TextDecoration.underline,
                          color:Colors.green,
                        decorationThickness:1
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const LoginPart(),
              ),




            ],
          ),
        );

  }
}
