import 'package:dio/dio.dart';

import 'package:dio/dio.dart';

class DioHelper
{
  static Dio? dio;

  static init()
  {
    dio = Dio(
      BaseOptions(
        baseUrl:'https://lavie.orangedigitalcenteregypt.com/',
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type':'application/json',
        },
      ),
    );
  }

  static Future<Response> Auth(
      {
        required String url,
        Map <String , dynamic>? query,
        required Map <String , dynamic> data,


      })async
  {
    return dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }



  static Future<Response> getData(String url,)async {

    dio!.options.headers =
    {
      "Authorization":"Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI4NzhkNTI5OS04YzBiLTQxNDctYjIxZC1lOTYzYWVlMWViM2EiLCJpYXQiOjE2NjExODIxNzAsImV4cCI6MTY2MTM1NDk3MH0.trlieotym7J0K808emhsqjsGkQFYMhTaO2_lQcnInnw",
    };

    return dio!.get(url,);
  }

  static Future<Response> editProfile(
      {
        required String url,
        Map <String , dynamic>? query,
        required Map <String , dynamic> data,
        String? token,


      })async
  {

    dio!.options.headers =
    {
      "Authorization":"Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI4NzhkNTI5OS04YzBiLTQxNDctYjIxZC1lOTYzYWVlMWViM2EiLCJpYXQiOjE2NjExODIxNzAsImV4cCI6MTY2MTM1NDk3MH0.trlieotym7J0K808emhsqjsGkQFYMhTaO2_lQcnInnw",

    };

    return dio!.patch(
      url,
      queryParameters: query,
      data: data,
    );
  }



  static Future<Response> createPost(
      {
        required String url,
        Map <String , dynamic>? query,
        required Map <String , dynamic> data,
        String? token,


      })async
  {

    dio!.options.headers =
    {
      "Authorization":"Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI4NzhkNTI5OS04YzBiLTQxNDctYjIxZC1lOTYzYWVlMWViM2EiLCJpYXQiOjE2NjExODIxNzAsImV4cCI6MTY2MTM1NDk3MH0.trlieotym7J0K808emhsqjsGkQFYMhTaO2_lQcnInnw",
    };

    return dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }


//


}