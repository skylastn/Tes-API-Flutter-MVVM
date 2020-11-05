import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:tes/Models/Gambar.dart';
import 'dart:async';

import 'package:tes/Models/User.dart';

class GambarViewModels {
  static Future<List<Gambar>> getGambar() async {
    // future is used to handle the error when calling api > Future + async or await
    print("https://jsonplaceholder.typicode.com/albums/1/photos");
    var dan = '&';
//    var materiget = 'url='+url;

    var data = await http.get("https://jsonplaceholder.typicode.com/albums/1/photos",
//        +materiget,
        headers: {
          'Content-type' : 'application/json',
          'Accept' : 'application/json',
//      'authorization': apiConfig.getBasicAuth()
        });

    print('Cek Data Gambar : '+data.body);
    return gambarFromJson(data.body);

  }
}