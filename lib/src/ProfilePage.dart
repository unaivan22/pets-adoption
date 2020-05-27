import 'package:flutter/material.dart';
import 'package:pets_adoption/src/custom_icons.dart';
import 'Foundation.dart';
import 'package:flutter/cupertino.dart';
import 'TestRoute.dart';
// import 'custom_icons.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoPageScaffold(
        //   navigationBar: CupertinoNavigationBar(middle: Text("Profile"),),
        //     child: Center(
        //   child: Text("Profile"),
        // )
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: Text('Profile'),
                trailing: new CupertinoButton(
                  child: new Icon(
                    CustomIcons.bell,
                    size: 24.0,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return new CupertinoAlertDialog();
                        });
                  },
                  padding: EdgeInsets.all(0.0),
                ),
              )
            ];
          },
          body: Container(
            padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
            // color: Colors.pinkAccent,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: new NetworkImage(
                                "https://avatars1.githubusercontent.com/u/25717454?s=460&u=ea40151ad2416268a9fd5b268277aa1d28579da5&v=4")))),
                GestureDetector(
                  child: Container(
                  margin: EdgeInsets.only(top: 10.0, bottom: 30.0),
                  child: CupertinoButton(
                    onPressed: () {
                      debugPrint('Tapped lur');
                       Navigator.push(context,MaterialPageRoute(builder: (context) => TestRoute()));
                    },
                    child: Text("Edit Profile"),
                  ),
                ),
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
                                'Privacy & andogout',
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
              ],
            ),
          ),
        ),

        //   appBar: AppBar(
        //   title: Text('Search App'),
        //   actions: <Widget>[
        //     IconButton(icon: Icon(Icons.search),
        //         onPressed: () {
        //         })
        //   ],
        // ),
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
