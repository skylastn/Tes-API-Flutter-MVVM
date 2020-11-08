import 'package:flutter/material.dart';
import 'package:tes/Models/User.dart';

import 'ViewsModels/UserViewModels.dart';

class NamaUser extends StatefulWidget {
  @override
  _NamaUser createState() => _NamaUser();
}

//List<String> data = ['Page 0', 'Page 1', 'Page 2'];
//int initPosition = 1;

List<Tab> _tabs = List<Tab>();
List<Widget> _generalWidgets = List<Widget>();

TabController _tabController;
TextEditingController searchController = new TextEditingController();

double height, width;

class _NamaUser extends State<NamaUser>  {
  double height, width;

  List<User> user = new List();
  void initData() async{
//    user = await UserViewModels.getUser();
    UserViewModels.getUser().then((value) {
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
      return CircularProgressIndicator(

      );
    }else{
      return Scaffold(
        body:SingleChildScrollView(
          child: Container(
            height:height,
            child:GridView.count(
              crossAxisCount: 3,
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
                                    Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.only(left: 5, right: 5, top: 10),
                                      child: Text(user[index].name,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Color(0xFF444444),
                                              fontFamily: 'Roboto-Light.ttf',
                                              fontSize: 15,
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
    }

  }
}

