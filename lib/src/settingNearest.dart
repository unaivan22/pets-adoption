import 'package:flutter/material.dart';
// import 'Foundation.dart';
import 'package:flutter/cupertino.dart';
// import 'custom_icons.dart';

class SettingNearestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Setting"),
      ),
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            // CupertinoSliverNavigationBar(
            //   largeTitle: Text('Settings'),
            // )
          ];
        },
        body: Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 50.0),
            // color: Colors.pinkAccent,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(
                    top: 0.0, bottom: 15.0, right: 15.0, left: 15.0),
                    child: Row(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              // child: CircleAvatar(
                              //   backgroundImage:
                              //       NetworkImage('https://i.pravatar.cc/111'),
                              //   minRadius: 30,
                              //   backgroundColor: Colors.white,
                              // ),
                              child: Icon(
                                CupertinoIcons.settings_solid,
                                color: Colors.green,
                                size: 40.0,
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
                                'Settings',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                              ),
                              Text(
                                'Privacy & and logout',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                ),
                              ),
                              // Padding(
                              //   padding: EdgeInsets.only(top: 5),
                              // ),
                            ],
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                                size: 18,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withAlpha(100),
                            offset: Offset(0, 0),
                            blurRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                    // color: Colors.white38,
                    // margin: EdgeInsets.only(top: 20.0),
                    padding: EdgeInsets.only(
                        top: 15.0, bottom: 15.0, right: 15.0, left: 15.0),
                    child: Row(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                CupertinoIcons.person_solid,
                                color: Colors.orange,
                                size: 40.0,
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
                                'Help & Support',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                              ),
                              Text(
                                'Help Center and legal terms',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                ),
                              ),
                              // Padding(
                              //   padding: EdgeInsets.only(top: 5),
                              // ),
                              // Text(
                              //   '11:00 AM',
                              //   style: TextStyle(
                              //     color: Colors.grey,
                              //     fontSize: 10,
                              //   ),
                              // )
                            ],
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                                size: 18,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withAlpha(100),
                            offset: Offset(0, 0),
                            blurRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                    // color: Colors.white38,
                    // margin: EdgeInsets.only(top: 20.0),
                    padding: EdgeInsets.only(
                        top: 15.0, bottom: 15.0, right: 15.0, left: 15.0),
                    child: Row(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                CupertinoIcons.eye_solid,
                                color: Colors.red,
                                size: 40.0,
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
                                'View as Spectator',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                              ),
                              Text(
                                'To View Your Profile as Spectator',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                ),
                              ),
                              // Padding(
                              //   padding: EdgeInsets.only(top: 5),
                              // ),
                              // Text(
                              //   '11:00 AM',
                              //   style: TextStyle(
                              //     color: Colors.grey,
                              //     fontSize: 10,
                              //   ),
                              // )
                            ],
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                                size: 18,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                ),
              ],
            ),
          ),
      ),
    );
  }
}
