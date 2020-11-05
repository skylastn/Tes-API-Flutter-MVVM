import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nice_button/NiceButton.dart';
import 'package:tes/GambarActivity.dart';
import 'package:tes/NamaUserActivity.dart';
import 'package:tes/ViewsModels/UserViewModels.dart';

import 'Models/User.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  var firstColor = Color(0xff5b86e5),
      secondColor = Color(0xff36d1dc);
  TextEditingController nowa = new TextEditingController();
  TextEditingController pesan = new TextEditingController();
  String _activity = '+62';

  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Welcome to Flutter",
        home:Builder(
          builder: (context) => Center(
              child: new Container (
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.white,
                  child: new Container(
                    child: new Center(
                        child: new Column(
                            children: [
                              new Padding(padding: EdgeInsets.only(top: 140.0)),
                              new Text('Tes ',
                                style: new TextStyle(color: hexToColor("#F2A03D"),
                                    fontSize: 25.0),),

                              new Padding(padding: EdgeInsets.only(top: 30.0)),

                              NiceButton(
                                radius: 40,
                                padding: const EdgeInsets.all(15),
                                text: "Tes Nama",
                                icon: Icons.account_circle,
                                gradientColors: [secondColor, firstColor],
                                onPressed: () {

                                  Fluttertoast.showToast(
                                      msg: "Anda Memilih tes User",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 16.0
                                  );

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NamaUser()),
                                  );

                                },
                              ),
                              new Padding(padding: EdgeInsets.only(top: 15.0)),

                              NiceButton(
                                radius: 40,
                                padding: const EdgeInsets.all(15),
                                text: "Tes Gambar",
                                icon: Icons.image,
                                gradientColors: [secondColor, firstColor],
                                onPressed: () {

                                  Fluttertoast.showToast(
                                      msg: "Anda Memilih Tes Gambar",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 16.0
                                  );
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => GambarActivity()),
                                  );
                                },
                              )

                            ]
                        )
                    ),
                  )
              )
            ),
          )
//        new Material(

//        )
    );
  }
}

//class MyApp extends StatelessWidget {
//  @override
//  _MyApp createState() => _MyApp();
//}
//class _MyApp extends State<MyApp>  {
//
//  double height, width;
//
//  List<User> user = new List();
//  void initData() async{
//    user = await UserViewModels.getUser();
//
//
//  }
//
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
////    height = MediaQuery.of(context).size.height;
////    width = MediaQuery.of(context).size.width;
//
//    if(user.length==0){
//      return Container(
////        height: height,
//        child: Column(
//          children: [
//            Text("Data Sedang Loading"),
//            CircularProgressIndicator()
//          ],
//        )
//
//      );
//    }else{
//      return Container(
//        height: height,
//        child: SingleChildScrollView(
//          child: GridView.count(
//            crossAxisCount: 3,
////    physics: NeverScrollableScrollPhysics(),
//            padding: EdgeInsets.all(1.0),
//            childAspectRatio: 7.0 / 9.0,
//            children: List<Widget>.generate(user.length, (index) {
//              if(user==null||user.length==0){
//                return CircularProgressIndicator();
//              }else{
//                return GridTile(
//                    child: InkWell(
//                      onTap: () {
//
//                      },
//                      child: Container(
//                        padding: EdgeInsets.only(top: 5),
//                        child: Card(
//                            color: Colors.white,
//                            shape: RoundedRectangleBorder(
//                              borderRadius: const BorderRadius.all(
//                                Radius.circular(8.0),
//                              ),
//                            ),
//                            elevation: 0,
//                            child: Center(
//                              child: Column(
//                                children: <Widget>[
////                                  kategoriProduk.data[index].imageUrl==null||kategoriProduk.data[index].imageUrl.isEmpty
////                                      ?Image.network("https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI",
////                                    height: 90,
////                                    width: 70,
////                                    loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
////                                      if (loadingProgress == null) return child;
////                                      return Center(
////                                        child: CircularProgressIndicator(
////                                          value: loadingProgress.expectedTotalBytes != null ?
////                                          loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes : null,
////                                        ),
////                                      );
////                                    },
////                                  )
////                                      :Image.network(kategoriProduk.data[index].imageUrl,
////                                    height: 90,
////                                    width: 70,
////                                    loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
////                                      if (loadingProgress == null) return child;
////                                      return Center(
////                                        child: CircularProgressIndicator(
////                                          value: loadingProgress.expectedTotalBytes != null ?
////                                          loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
////                                              : null,
////                                        ),
////                                      );
////                                    },
////                                  ),
//                                  Container(
//                                    alignment: Alignment.center,
//                                    padding: EdgeInsets.only(left: 5, right: 5, top: 10),
//                                    child: Text(user[index].name,
//                                        textAlign: TextAlign.left,
//                                        style: TextStyle(
//                                            color: Color(0xFF444444),
//                                            fontFamily: 'Roboto-Light.ttf',
//                                            fontSize: 15,
//                                            fontWeight: FontWeight.w400)),
//                                  ),
//                                ],
//                              ),
//                            )),
//                      ),
//                    )
//                );
//              }
//
//            }),
//          )
//        ),
//      );
//    }
//
//  }
//}
//
