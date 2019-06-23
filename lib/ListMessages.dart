import 'package:flutter/material.dart';

import 'entity/Message.dart';

import 'dart:math';
List<String> urlList = [
'https://klike.net/uploads/posts/2019-03/1551511823_2.jpg',
'https://klike.net/uploads/posts/2019-03/1551511801_1.jpg',
 'https://klike.net/uploads/posts/2019-03/1551511804_3.jpg',
 'https://klike.net/uploads/posts/2019-03/medium/1551511784_4.jpg',
];
int min = 6;
int max = 12;
var rnd = new Random();
int listLength = min + (rnd.nextInt(max-min));


class Messages extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
   final List<Message> _messList = [];

   for(int i = 0; i < listLength; i++){
     _messList.add(new Message(urlList[rnd.nextInt(4)], 'Amxik', 'There must be some text here, but I couldn\'t think of anything.' , 120));
   }




   return new Column(
       children: <Widget>[
   new Flexible(child: new ListView.builder(
   padding: new EdgeInsets.all(8.0),

    itemBuilder: (_, int index) => new Column(children: <Widget>[
      _messList[index],
      SizedBox(
        height: 10,
      )
     ],
    ),
    itemCount: _messList.length,

    )
    )
    ]
    );

  }







}