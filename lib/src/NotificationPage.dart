import 'package:flutter/material.dart';
import 'Foundation.dart';
import 'package:flutter/cupertino.dart';
import 'chat_detail.dart';
import 'custom_icons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:badges/badges.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Notifications"),
        ),
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListView.builder(
                  itemCount: 20,
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
                          // color: Colors.white,
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          padding: EdgeInsets.only(top: 10.0, right: 10.0, bottom: 10.0, left: 10.0),
                          // margin: EdgeInsets.all(20.0),
                          // decoration: BoxDecoration(
                          //   boxShadow: [
                          //     BoxShadow(
                          //       color: Colors.grey.withAlpha(50),
                          //       offset: Offset(0, 0),
                          //       blurRadius: 5,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.circular(5),
                          //   // color: Colors.greenAccent,
                          //   color: Hexcolor('#ffffff'),
                          // ),
                          child: Row(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://i.pravatar.cc/21$index'),
                                      minRadius: 24,
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
                                      'New chat from unaivan',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                    ),
                                    Text(
                                      'Ready Om. Lokasi Madiun Selatan, kalau minat langsung pantau aja om',
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
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child : Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(right: 0.0, left: 10.0),
                                    child: Icon(
                                      CustomIcons.circle,
                                      size: 16,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              )
                              )
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
