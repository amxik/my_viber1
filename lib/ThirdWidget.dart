import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: new Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 45.0,
                  width: 100,
                  padding: EdgeInsets.only(top: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        color: Colors.transparent,
                        borderRadius:
                            BorderRadius.horizontal(left: Radius.circular(15)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(
                              "Viber",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 45,
                  width: 100,
                  padding: EdgeInsets.only(top: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        color: Colors.grey,
                        borderRadius:
                            BorderRadius.horizontal(right: Radius.circular(15)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(
                              "All",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          new Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Stack(children: <Widget>[
                      new Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://klike.net/uploads/posts/2019-03/1551511823_2.jpg'),
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
                        child: new Text('Maxym Niskov')
                    )
                  ],

                ),
                Column(
                  children: <Widget>[
                    Stack(children: <Widget>[
                      new Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://klike.net/uploads/posts/2019-03/1551511823_2.jpg'),
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
                        child: new Text('Maxym Niskov')
                    )
                  ],

                ),
                Column(
                  children: <Widget>[
                    Stack(children: <Widget>[
                      new Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://klike.net/uploads/posts/2019-03/1551511823_2.jpg'),
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
                        child: new Text('Maxym Niskov')
                    )
                  ],

                ),
              ],
            ),
          ),
          new Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Stack(children: <Widget>[
                      new Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://klike.net/uploads/posts/2019-03/1551511823_2.jpg'),
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
                        child: new Text('Maxym Niskov')
                    )
                  ],

                ),
                Column(
                  children: <Widget>[
                    Stack(children: <Widget>[
                      new Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://klike.net/uploads/posts/2019-03/1551511823_2.jpg'),
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
                        child: new Text('Maxym Niskov')
                    )
                  ],

                ),
                Column(
                  children: <Widget>[
                    Stack(children: <Widget>[
                      new Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://klike.net/uploads/posts/2019-03/1551511823_2.jpg'),
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
                        child: new Text('Maxym Niskov')
                    )
                  ],

                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 25, left: 10, right: 10),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: new Text(
                    'YOU',
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
                new Divider(
                  color: Colors.black,
                ),
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
                                  'https://klike.net/uploads/posts/2019-03/1551511823_2.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.only(left: 15),
                        child: new Text(
                          'Maxym Niskov',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 25, left: 10, right: 10),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: new Text(
                    'A',
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
                new SizedBox(
                  height: 10.0,
                  child: new Center(
                    child: new Container(
                      margin:
                          new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                      height: 5.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
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
                                  'https://klike.net/uploads/posts/2019-03/1551511823_2.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.only(left: 15),
                        child: new Text(
                          'Ashley Jackson',
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
              ],
            ),
          ),

          new Container(
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
                               'https://klike.net/uploads/posts/2019-03/1551511823_2.jpg'),
                           fit: BoxFit.cover),
                       borderRadius: BorderRadius.all(Radius.circular(15)),
                     ),
                   ),
                   new Container(
                     padding: EdgeInsets.only(left: 15),
                     child: new Text(
                       'Ashley Jackson',
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
          ),
          new Container(
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
                                  'https://klike.net/uploads/posts/2019-03/1551511823_2.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.only(left: 15),
                        child: new Text(
                          'Ashley Jackson',
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
          )
        ],
      )),
    );
  }
}
