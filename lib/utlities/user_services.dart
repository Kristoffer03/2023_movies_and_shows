import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'api_status.dart';
import 'constants.dart';

class UserServices{
  static Future<Object> getProductListData({int skip = 0}) async{
    try{
      var response =  await http.get(Uri.https("moviesdatabase.p.rapidapi.com", "/titles",{"startYear": "2023"}));

      if(response.statusCode == 200){
        // Success
      }
      return Failure(code: USER_INVALID_RESPONSE, errorResponse: 'Invalid Response');
    } on HttpException{
      return Failure(code: NO_INTERNET, errorResponse: 'No Internet');
    } on FormatException{
      return Failure(code: INVALID_FORMAT, errorResponse: 'Invalid Format');
    } catch (e){
      return Failure(code: UNKNOWN_ERROR, errorResponse: 'Unknown Error');
    }
  }

}