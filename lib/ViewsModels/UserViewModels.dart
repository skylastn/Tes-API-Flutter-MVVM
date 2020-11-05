import 'dart:convert';


import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:tes/Models/User.dart';

class UserViewModels {
  static Future<List<User>> getUser() async {
    // future is used to handle the error when calling api > Future + async or await
    print("https://jsonplaceholder.typicode.com/users");
    var dan = '&';
//    var materiget = 'url='+url;

    var data = await http.get("https://jsonplaceholder.typicode.com/users",
//        +materiget,
        headers: {
          'Content-type' : 'application/json',
          'Accept' : 'application/json',
//      'authorization': apiConfig.getBasicAuth()
        });

    print('Cek Data User : '+data.body);
    return userFromJson(data.body);

  }
}