import 'package:flutter/material.dart';
import 'Foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

// class ChatDetails extends StatefulWidget {
//   @override
//   _ChatDetailsState createState() => _ChatDetailsState();
// }

class ChatDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Chat"),
      ),
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[];
        },
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: ListView.builder(
                      itemCount: 1,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Today',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Bubble(
                                message: 'Apakah kucingnya masih ready om?',
                                isMe: true,
                              ),
                              Bubble(
                                message: 'lokasi mana om?',
                                isMe: true,
                              ),
                              Text(
                                'Feb 25, 2018',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Bubble(
                                message: 'Ready om',
                                isMe: false,
                              ),
                              Bubble(
                                message: 'Ready Om. Lokasi Madiun Selatan, kalau minat langsung pantau aja om',
                                isMe: false,
                              ),
                              Text(
                                'Today',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Bubble(
                                message: 'Apakah kucingnya masih ready om?',
                                isMe: true,
                              ),
                              Bubble(
                                message: 'lokasi mana om?',
                                isMe: true,
                              ),
                              Text(
                                'Feb 25, 2018',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Bubble(
                                message: 'Ready om',
                                isMe: false,
                              ),
                              Bubble(
                                message: 'Ready Om. Lokasi Madiun Selatan, kalau minat langsung pantau aja om',
                                isMe: false,
                              ),

                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              // width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.all(200),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(-2, 0),
                    blurRadius: 5,
                  ),
                ]),
                child: Row(
                    children: <Widget>[
                    Text('unad disini'),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera,
                        color: Color(0xff3E8DF3),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.image,
                        color: Color(0xff3E8DF3),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Enter Message',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                        color: Color(0xff3E8DF3),
                      ),
                    ),
                  ],
                  ),
              ),
            )
          ],
        ),
      ),
    );
    //return Scaffold(
        // appBar: AppBar(
        //   elevation: 0.4,
        //   iconTheme: IconThemeData(color: Colors.black),
        //   backgroundColor: Colors.white,
        //   title: Row(
        //     children: <Widget>[
        //       Container(
        //         width: 40,
        //         height: 40,
        //         margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
        //         child: CircleAvatar(
        //           backgroundImage: NetworkImage('https://i.pravatar.cc/110'),
        //           backgroundColor: Colors.grey[200],
        //           minRadius: 30,
        //         ),
        //       ),
        //       Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: <Widget>[
        //           Text(
        //             'Selina Kyle',
        //             style: TextStyle(color: Colors.black),
        //           ),
        //           Text(
        //             'Online Now',
        //             style: TextStyle(
        //               color: Colors.grey[400],
        //               fontSize: 12,
        //             ),
        //           )
        //         ],
        //       )
        //     ],
        //   ),
        // ),
        // body: Stack(
        //   children: <Widget>[
        //     Container(
        //       color: Colors.white,
        //       child: Column(
        //         children: <Widget>[
        //           Flexible(
        //             child: ListView.builder(
        //               itemCount: 1,
        //               shrinkWrap: true,
        //               itemBuilder: (BuildContext context, int index) {
        //                 return Padding(
        //                   padding: EdgeInsets.all(10),
        //                   child: Column(
        //                     children: <Widget>[
        //                       Text(
        //                         'Today',
        //                         style:
        //                             TextStyle(color: Colors.grey, fontSize: 12),
        //                       ),
        //                       Bubble(
        //                         message: 'Hi How are you ?',
        //                         isMe: true,
        //                       ),
        //                       Bubble(
        //                         message: 'have you seen the docs yet?',
        //                         isMe: true,
        //                       ),
        //                       Text(
        //                         'Feb 25, 2018',
        //                         style:
        //                             TextStyle(color: Colors.grey, fontSize: 12),
        //                       ),
        //                       Bubble(
        //                         message: 'i am fine !',
        //                         isMe: false,
        //                       ),
        //                       Bubble(
        //                         message: 'yes i\'ve seen the docs',
        //                         isMe: false,
        //                       ),
        //                     ],
        //                   ),
        //                 );
        //               },
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     Positioned(
        //       bottom: 0,
        //       left: 0,
        //       width: MediaQuery.of(context).size.width,
        //       child: Container(
        //         padding: EdgeInsets.all(10),
        //         decoration: BoxDecoration(color: Colors.white, boxShadow: [
        //           BoxShadow(
        //             color: Colors.grey[300],
        //             offset: Offset(-2, 0),
        //             blurRadius: 5,
        //           ),
        //         ]),
        //         child: Row(
        //           children: <Widget>[
        //             IconButton(
        //               onPressed: () {},
        //               icon: Icon(
        //                 Icons.camera,
        //                 color: Color(0xff3E8DF3),
        //               ),
        //             ),
        //             IconButton(
        //               onPressed: () {},
        //               icon: Icon(
        //                 Icons.image,
        //                 color: Color(0xff3E8DF3),
        //               ),
        //             ),
        //             Padding(
        //               padding: EdgeInsets.only(left: 15),
        //             ),
        //             Expanded(
        //               child: TextFormField(
        //                 keyboardType: TextInputType.text,
        //                 decoration: InputDecoration(
        //                   hintText: 'Enter Message',
        //                   border: InputBorder.none,
        //                 ),
        //               ),
        //             ),
        //             IconButton(
        //               onPressed: () {},
        //               icon: Icon(
        //                 Icons.send,
        //                 color: Color(0xff3E8DF3),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     )
        //   ],
        // ),
        //);
  }
}

class Bubble extends StatelessWidget {
  final bool isMe;
  final String message;

  Bubble({this.message, this.isMe});

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
      padding: isMe ? EdgeInsets.only(left: 40,) : EdgeInsets.only(right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            mainAxisAlignment:
                isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  gradient: isMe
                      ? LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [
                              0.1,
                              1
                            ],
                          colors: [
                              Colors.blueAccent,
                              Colors.blueAccent,
                            ])
                      : LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [
                              0.1,
                              1
                            ],
                          colors: [
                              Hexcolor("#F0F0F0"),
                              Hexcolor("#F0F0F0"),
                            ]),
                  borderRadius: isMe
                      ? BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(15),
                        )
                      : BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(0),
                        ),
                ),
                child: Column(
                  crossAxisAlignment:
                      isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      message,
                      textAlign: isMe ? TextAlign.end : TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                        color: isMe ? Hexcolor("#ffffff") : Hexcolor("#000000"),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
