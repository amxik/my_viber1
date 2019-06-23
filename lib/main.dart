import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


import 'ListMessages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          child: new Scaffold(
              backgroundColor: Colors.purple[100],
              appBar: _myAppbar(),
              bottomNavigationBar: BottomNavigationBar(items: [
              new BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.only(right: 90, top: 10),
                child: Icon(Icons.search,
                  color: Colors.white, size: 30,
                ),
              ), title: Text('')

              ),
                BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.only(left: 90, top: 10),
                    child: Icon(Icons.menu,
                      color: Colors.white, size: 30,),
                  ),
                  title: Text('')
                ),
              ]
                  ,
                backgroundColor:  Colors.grey.withOpacity(0.4),
              ),

          body: new Messages(),
        )
    ));
  }

  AppBar _myAppbar() {
    return new AppBar(
        backgroundColor: Colors.purple,
        flexibleSpace: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              TabBar(

                tabs: [
                  Tab(icon: Icon(Icons.message)),
                  Tab(icon: Icon(Icons.person_outline)),
                  Tab(icon: Icon(Icons.phone)),
                  Tab(icon: Icon(Icons.spa)),
                ],
              ),
            ]
        )

    );
  }


}




