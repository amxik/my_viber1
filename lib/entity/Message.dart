
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class Message extends StatelessWidget {

  final String urlImage;
  final String text;
  final String description;
  final int followers;

  Message(this.urlImage, this.text, this.description, this.followers);



  @override
  Widget build(BuildContext context) {
    return new Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.blue[100],
      ),

      height: 110,
       child: new Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           new Container(

                width: 100,
               decoration: BoxDecoration(
                 image: DecorationImage( image: NetworkImage(urlImage),
                      fit: BoxFit.cover
                     ),
                   borderRadius: BorderRadius.all(Radius.circular(8.0)),

               ),


           ),
           new SizedBox(
             width: 5,
           ),

           Expanded(
             child: new Column(
               crossAxisAlignment: CrossAxisAlignment.start,

               children: <Widget>[
                 Row(
                   children: <Widget>[
                     new Container(
                        padding: EdgeInsets.all(5),
                          child: new Text(text, style: TextStyle(fontSize: 16, fontWeight:
                          FontWeight.bold),),
                     ),
                     SizedBox(
                       width: 120,
                     ),
                     new Container(child:
                     Text(DateFormat("h:mm a").format(DateTime.now()), style: TextStyle(fontSize: 10),),)
                   ],
                 ),
                 new Row(
                   children: <Widget>[

                     new Container(

                       height: 35,
                         width: 35,
                         decoration: BoxDecoration(
                           image: DecorationImage(image: NetworkImage(urlImage),
                             fit: BoxFit.cover
                             ),

                         borderRadius: BorderRadius.all(Radius.circular(8.0)
                        )
                        )

                     ),
                     Expanded(
                       child: new Container(
                         padding: EdgeInsets.only(left: 2),
                         child: new RichText(
                             text: new TextSpan(
                               style: TextStyle(color: Colors.blueGrey),
                                 children: <TextSpan>[
                                   new TextSpan(
                                       text: text + ': ',
                                       style: TextStyle(
                                           fontWeight:
                                           FontWeight.bold, fontSize: 15)),
                                   new TextSpan(text: description, style: TextStyle(fontSize: 15)),


                                 ]
                             )
                         ),
                       ),
                     ),
                   ],
                 ),

                 new Container(
                   child: new Text( ' ${followers}k followers'),
                 )
                   ],
             ),
           ),

         ],

       ),

    );
  }
}