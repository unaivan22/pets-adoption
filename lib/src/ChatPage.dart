import 'package:flutter/material.dart';
import 'Foundation.dart';
import 'package:flutter/cupertino.dart';
import 'chat_detail.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoPageScaffold(
        // navigationBar: CupertinoNavigationBar(
        //   middle: Text("User Info"),
        // ),
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: Text('Chat'),
              )
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListView.builder(
                  itemCount: 40,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatDetails(),
                            ),
                          );
                        },
                        child: Container(
                          color: Colors.white,
                          // margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                          padding: EdgeInsets.only(top: 15.0, right: 15.0, bottom: 15.0, left: 15.0),
                          // decoration: BoxDecoration(
                          //   boxShadow: [
                          //     BoxShadow(
                          //       color: Colors.grey.withAlpha(50),
                          //       offset: Offset(0, 0),
                          //       blurRadius: 5,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.circular(5),
                          //   color: Colors.white,
                          // ),
                          child: Row(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://i.pravatar.cc/11$index'),
                                      minRadius: 30,
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Jocelyn',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                    ),
                                    Text(
                                      'Hi, this cat are amazing, if you are interested you can see it directly',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                    ),
                                    Text(
                                      '11:00 AM',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // Column(
                              //   children: <Widget>[
                              //     Padding(
                              //       padding: EdgeInsets.only(right: 15),
                              //       child: Icon(
                              //         Icons.chevron_right,
                              //         size: 18,
                              //       ),
                              //     )
                              //   ],
                              // )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: Text("User Page"),
        ),
      );
    }
  }
}
