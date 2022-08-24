import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/Profile_provider.dart';
import 'package:provider/provider.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {



  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create : (_)=>ProfileProvider(),
      builder : (context,child)=>Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                height: (MediaQuery.of(context).size.height/3+30),
                child: Image.network("https://media.istockphoto.com/vectors/user-avatar-profile-icon-black-vector-illustration-vector-id1209654046?k=20&m=1209654046&s=612x612&w=0&h=Atw7VdjWG8KgyST8AXXJdmBkzn0lvgqyWod9vTb2XoE=",
                    fit:BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                  children: [

                    AppBar(
                        leading: IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: const  Icon(Icons.arrow_back_outlined)),
                        backgroundColor: Colors.transparent,
                  ),
                    SizedBox(height: MediaQuery.of(context).size.height/3+30),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: ListTile(
                        title: const Text('You have 30 points',style: TextStyle(fontSize: 20),),
                        tileColor: Colors.green[100],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),


                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 10,left: 25,bottom: 5),
                        child: Text('Edit Profile',style: TextStyle(fontSize: 20,),
                              )
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: ListTile(
                        onTap: (){

                        },
                        contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                        title: Text("Change Name"),
                        trailing:Icon(Icons.arrow_forward) ,
                        leading: Icon(Icons.change_circle),
                        tileColor: Colors.grey[100],
                        shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1,color: Colors.grey),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: ListTile(
                        onTap: (){
                        },
                        contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                        title: Text("Change E-mail"),
                        trailing:Icon(Icons.arrow_forward) ,
                        leading: Icon(Icons.change_circle),
                        tileColor: Colors.grey[100],
                        shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1,color: Colors.grey),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    )

                    ]

                    ),

          ],
        ),
      ),

    )
    );
  }
}
