import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  File? image;

  Future pickImage() async{
    try{
      final image = await ImagePicker().pickImage(source: ImageSource.camera );

      if(image==null) return;

      final imageTemporary = File(image.path);

      setState((){
        this.image  = imageTemporary;
      });

      this.image = imageTemporary;
    } on PlatformException catch(e){
      print("Failed to pick image : $e");
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey,
      body:SafeArea(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // image !=null ? Image.file(image!,width: 160, height: 160,fit: BoxFit.cover):FlutterLogo(size: 160,),
                Card(

                  child: MaterialButton(onPressed: (){
                    Future pickImage() async{
                      try{
                        final image = await ImagePicker().pickImage(source: ImageSource.camera );

                        if(image==null) return;

                        final imageTemporary = File(image.path);

                        setState((){
                          this.image  = imageTemporary;
                        });

                        this.image = imageTemporary;
                      } on PlatformException catch(e){
                        print("Failed to pick image : $e");
                      }

                    };
                    pickImage();

                  },
                    child: Column(

                        children:const [
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.camera_alt,
                            size: 30,
                          ),
                          Text("Camera",
                            style: TextStyle(
                            letterSpacing: 3,
                          fontSize: 30
                        ),
                      ),
                          SizedBox(
                            height: 30,
                          )
                    ]
                    ),
                  ),
                ),
                Card(

                  child: MaterialButton(onPressed: (){

                    Future pickImage() async{
            try{
              final image = await ImagePicker().pickImage(source: ImageSource.gallery );

              if(image==null) return;

              final imageTemporary = File(image.path);

              setState((){
                this.image  = imageTemporary;
              });

              this.image = imageTemporary;
            } on PlatformException catch(e){
              print("Failed to pick image : $e");
            }

          };
                    pickImage();
                    },
                    child: Column(

              children:const [
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.photo,
                  size: 30,
                ),
                Text("Gallery",
                  style: TextStyle(
                      letterSpacing: 3,
                      fontSize: 30
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ]
          ),
        ),
      ),
              ],
            ),
        ),
      ),

    );
  }
}

