import 'package:flutter/material.dart';

class Contact extends StatelessWidget{
    String imgUrl;
    String name;


    Contact(this.imgUrl, this.name);

    @override
  Widget build(BuildContext context) {

      return Column(
        children: <Widget>[
          Stack(children: <Widget>[
            new Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        imgUrl),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
            ),
            Positioned(
              height: 170,
              width: 180,
              child: new Icon(
                Icons.phone_in_talk,
                color: Colors.purple,
              ),
            )
          ]),
          new Container(
              child: new Text(name)
          )
        ],

      );
  }
}