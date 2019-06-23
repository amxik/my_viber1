import 'package:flutter/material.dart';


class ContactRow extends StatelessWidget{
  String imgUrl;
  String name;


  ContactRow(this.imgUrl, this.name);

  @override
  Widget build(BuildContext context) {

    return new Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: new Column(children: <Widget>[
          new Divider(),
          new Container(
            child: new Row(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(left: 10),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            imgUrl),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left: 15),
                  child: new Text(
                    name,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          new IconButton(
                              icon: Icon(
                                Icons.phone_in_talk,
                                color: Colors.purple,
                              ),
                              onPressed: () {})
                        ]))
              ],
            ),
          )

        ],)
    );
  }
}