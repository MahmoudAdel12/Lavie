import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/login_provider.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class LoginPart extends StatefulWidget {
  const LoginPart({Key? key}) : super(key: key);
  factory LoginPart.create() => LoginPart();

  @override
  State<LoginPart> createState() => _LoginPartState();
}

class _LoginPartState extends State<LoginPart> {
  bool secure = true;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_)=>LoginProvider(),
        builder: (context,child)=>Scaffold(
          body: SafeArea(
            child : SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                    children :[
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: TextFormField(

                          keyboardType: TextInputType.emailAddress,
                          onChanged: (val){
                            LoginProvider.setEmail(val);
                          },

                          onFieldSubmitted: (String value) {
                            LoginProvider.setEmail(value);
                            print(LoginProvider.getEmail());
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
                          // controller: Provider.of<LoginProvider>(context,listen: false).passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: secure,
                          validator: (value){
                            if(value ==null){
                              return"please enter some text";
                            }
                            return null;
                            },
                          onChanged: (String val){
                            LoginProvider.setPassword(val);

                          },
                          // onFieldSubmitted: (String val) {
                          //   LoginProvider.setPassword(val);
                          //   print(LoginProvider.getPassword());
                          // },
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
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: FloatingActionButton(
                                  onPressed: () async{
                                    LoginProvider.login(LoginProvider.email, LoginProvider.password,context);

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
                        width: MediaQuery.of(context).size.width,
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
              ),

          ),
        ),
    );
  }
}
