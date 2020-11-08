import 'package:flutter/material.dart';
import 'package:tes/Models/Gambar.dart';
import 'package:tes/Models/User.dart';
import 'package:tes/ViewsModels/GambarViewsModels.dart';

import 'ViewsModels/UserViewModels.dart';

class GambarActivity extends StatefulWidget {
  @override
  _GambarActivity createState() => _GambarActivity();
}

//List<String> data = ['Page 0', 'Page 1', 'Page 2'];
//int initPosition = 1;


double height, width;

class _GambarActivity extends State<GambarActivity>  {
  double height, width;

  List<Gambar> user = new List();
  void initData() async{
//    user = await UserViewModels.getUser();
    GambarViewModels.getGambar().then((value) {
      user = value;
//      for(int i = 0; i<=5; i++){
//        user.addAll(value);
//      }
      setState(() {

      });

    });


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initData();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    if(user.length==0){
      return Scaffold(
        body:CircularProgressIndicator()

//        height: height,
//          body: Column(
//            children: [
//              Container(
//                height: height,
//                color: Colors.white,
//              ),
//              Text("Data Sedang Loading"),
//            ],
//          )

      );
    }else{

      return Scaffold(
        body:SingleChildScrollView(
            child: Container(
                height:height,
                child:GridView.count(
                  crossAxisCount: 2,
//    physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(1.0),
                  childAspectRatio: 7.0 / 9.0,
                  children: List<Widget>.generate(user.length, (index) {
                    if(user==null||user.length==0){
                      return CircularProgressIndicator();
                    }else{
                      return GridTile(
                          child: InkWell(
                            onTap: () {

                            },
                            child: Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(8.0),
                                    ),
                                  ),
                                  elevation: 0,
                                  child: Center(
                                    child: Column(
                                      children: <Widget>[
                                        user[index].url==null||user[index].url.isEmpty
                                            ?Image.network("https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI",
                                          height: 120,
                                          width: 70,
                                          loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                                            if (loadingProgress == null) return child;
                                            return Center(
                                              child: CircularProgressIndicator(
                                                value: loadingProgress.expectedTotalBytes != null ?
                                                loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes : null,
                                              ),
                                            );
                                          },
                                        )
                                            :Image.network(user[index].url,
                                          height: 90,
                                          width: 70,
                                          loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                                            if (loadingProgress == null) return child;
                                            return Center(
                                              child: CircularProgressIndicator(
                                                value: loadingProgress.expectedTotalBytes != null ?
                                                loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                                                    : null,
                                              ),
                                            );
                                          },
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.only(left: 5, right: 5, top: 10),
                                          child: Text(user[index].title,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color(0xFF444444),
                                                  fontFamily: 'Roboto-Light.ttf',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          )
                      );
                    }

                  }),
                )
            )

        ),
      );

//      return Scaffold(
//        body: SingleChildScrollView(
//            child: GridView.count(
//              crossAxisCount: 3,
////    physics: NeverScrollableScrollPhysics(),
//              padding: EdgeInsets.all(1.0),
//              childAspectRatio: 7.0 / 9.0,
//              children: List<Widget>.generate(user.length, (index) {
//                if(user==null||user.length==0){
//                  return CircularProgressIndicator();
//                }else{
//                  return GridTile(
//                      child: InkWell(
//                        onTap: () {
//
//                        },
//                        child: Container(
//                          padding: EdgeInsets.only(top: 5),
//                          child: Card(
//                              color: Colors.white,
//                              shape: RoundedRectangleBorder(
//                                borderRadius: const BorderRadius.all(
//                                  Radius.circular(8.0),
//                                ),
//                              ),
//                              elevation: 0,
//                              child: Center(
//                                child: Column(
//                                  children: <Widget>[
//                                  user[index].url==null||user[index].url.isEmpty
//                                      ?Image.network("https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI",
//                                    height: 90,
//                                    width: 70,
//                                    loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
//                                      if (loadingProgress == null) return child;
//                                      return Center(
//                                        child: CircularProgressIndicator(
//                                          value: loadingProgress.expectedTotalBytes != null ?
//                                          loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes : null,
//                                        ),
//                                      );
//                                    },
//                                  )
//                                      :Image.network(user[index].url,
//                                    height: 90,
//                                    width: 70,
//                                    loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
//                                      if (loadingProgress == null) return child;
//                                      return Center(
//                                        child: CircularProgressIndicator(
//                                          value: loadingProgress.expectedTotalBytes != null ?
//                                          loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
//                                              : null,
//                                        ),
//                                      );
//                                    },
//                                  ),
////                                    Container(
////                                      alignment: Alignment.center,
////                                      padding: EdgeInsets.only(left: 5, right: 5, top: 10),
////                                      child: Text(user[index].name,
////                                          textAlign: TextAlign.left,
////                                          style: TextStyle(
////                                              color: Color(0xFF444444),
////                                              fontFamily: 'Roboto-Light.ttf',
////                                              fontSize: 15,
////                                              fontWeight: FontWeight.w400)),
////                                    ),
//                                  ],
//                                ),
//                              )
//                          ),
//                        ),
//                      )
//                  );
//                }
//
//              }),
//            )
//        ),
//      );
    }

  }
}

