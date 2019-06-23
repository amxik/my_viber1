import 'package:flutter/material.dart';





const String _name = "Amxik";
Widget _myPhoto() {
  return new Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxnp3JTT31qV-Mdm0bsdJjIzxYmN3eDFMCZhYUNRKggvbMyLBU'),
          fit: BoxFit.cover,

        ),
        shape: BoxShape.circle,

      )
  );
}

class FriendlychatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ChatScreen();
  }
}

class ChatScreen extends StatefulWidget {
  @override
  State createState() => new ChatScreenState();
}

class ChatMessage extends StatelessWidget {
  final AnimationController animationController;
  final String text;
  ChatMessage({this.text, this.animationController});

  @override
  Widget build(BuildContext context) {


    return new SizeTransition(
        sizeFactor: new CurvedAnimation(parent: animationController, curve: Curves.ease),
        axisAlignment: 0.0,
        child: new Container(
            decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.all(Radius.circular(10))

            ),

            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: _myPhoto(),
                ),

                new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(_name, style: TextStyle(fontSize: 14, color: Colors.purple[400])),


                      new Container(

                        margin: const EdgeInsets.only(top: 5.0),
                        child: new Text(text, style: TextStyle(fontSize: 20, color: Colors.black,) ,softWrap: true,),



                      )


                    ],
                  ),
                )

              ],

            )
        )
    );
  }

}

class ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = new TextEditingController();
  bool _isComposing = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
//        leading: new IconButton( padding: EdgeInsets.only(left: 20),icon: Icon(Icons.arrow_back_ios), onPressed: (){}),
        titleSpacing: -15,
        title: FlatButton(onPressed: (){},
            child: new Row(
              children: <Widget>[
                new Container(
                  child: new Icon(Icons.arrow_back_ios, color: Colors.purple[100],),
                ),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text('Friendlychat', style: TextStyle(fontSize: 23, color: Colors.white),),
                    new Text('Adriene, Alice, Elsa', style: TextStyle(color: Colors.purple[100], fontSize: 12))
                  ],
                )
              ],
            )),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.call), onPressed: (){}, color: Colors.purple[100], iconSize: 30),
          new Padding(padding: EdgeInsets.only(left: 10, right: 10), child:
          new IconButton(icon: new Icon(Icons.settings), onPressed: (){},iconSize: 30, color: Colors.purple[100],),
          )
        ],
      ),
      body: new Column(
        children: <Widget>[
          new Flexible(child: new ListView.builder(
            padding: new EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_, int index) => _messages[index],
            itemCount: _messages.length,
          )),
          new Divider(height: 1.0, color: Colors.purple,),
          new Container(
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return new IconTheme(
        data: new IconThemeData(color: Theme.of(context).accentColor) ,
        child: new Container(

            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: new Row(

              children: <Widget>[

                new IconButton( alignment: Alignment.centerLeft, icon: Icon(Icons.add, size: 30,), onPressed: (){}),
                new Flexible(
                  child: new TextField(
                    controller: _textController,
                    onChanged: (String text){
                      setState(() {
                        _isComposing = text.length > 0;
                      });
                    },
                    onSubmitted: _handleSubmitted,
                    decoration:
                    new InputDecoration.collapsed(hintText: "Send a message"),
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.symmetric(horizontal: 4.0),
                  child: new IconButton(
                      icon: new Icon(Icons.send,),color: Colors.purple,
                      onPressed: _isComposing ? () => _handleSubmitted(_textController.text) : null ),
                )
              ],
            )
        )
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    setState(() {
      _isComposing = false;
    });
    ChatMessage message = new ChatMessage(
      text: text,
      animationController: new AnimationController(vsync: this,
          duration: Duration(milliseconds: 900)),
    );

    setState(() {
      _messages.insert(0, message);
    });
    message.animationController.forward();
  }
}
