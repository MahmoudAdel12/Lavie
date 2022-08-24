import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:login/shared.dart';

class ProfileProvider with ChangeNotifier{
  
  SharedPreferencesKeys type = SharedPreferencesKeys.type ;
  String? message ;
  int? userId;
  Map<String,SharedPreferencesKeys> data = {
    "userId": SharedPreferencesKeys.userId,
    "firstName": SharedPreferencesKeys.firstName,
    "lastName": SharedPreferencesKeys.lastName,
    "email":SharedPreferencesKeys.email,
    "imageUrl": SharedPreferencesKeys.imageUrl,
    "address": SharedPreferencesKeys.address,
    "UserPoints": SharedPreferencesKeys.userPoints,
  };
  
  static void getUserData(context) async{
    try{
      var response = await Dio().post('https://lavie.orangedigitalcenteregypt.com/api/v1/user/me');
      print(response.data);

    }
    on DioError catch(e){
      print(e);
      print("I am here");
      if(e.message == 'Http status error [409]'){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('account already registered')));
      }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.response?.data['message'])));
    }

}

}