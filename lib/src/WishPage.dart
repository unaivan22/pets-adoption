import 'package:flutter/material.dart';
import 'Foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:pets_adoption/extensions/custom_icons.dart';
import 'NotificationPage.dart';

class WishPage extends StatelessWidget {
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
                heroTag: 'wishPage',
                largeTitle: Text('List of Wish'),
                 trailing: new CupertinoButton(
                  child: new Stack(
                    children: <Widget>[
                      new Icon(CustomIcons.bell, color: Colors.grey,),
                      new Positioned(  // draw a red marble
                        top: 0.0,
                        right: 0.0,
                        child: new Icon(Icons.brightness_1, size: 14.0, 
                          color: Colors.redAccent),
                      ),
                    ]
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationPage(),
                      ),
                    );
                  },
                  padding: EdgeInsets.all(0.0),
                ),
              )
            ];
          },
          body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // CustomHeading(
            //   title: 'Groups',
            // ),
            // Container(
            //   height: 150,
            //   child: ListView.builder(
            //     itemCount: 4,
            //     shrinkWrap: true,
            //     physics: ClampingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     padding: EdgeInsets.all(15),
            //     itemBuilder: (BuildContext context, int index) {
            //       return Column(
            //         children: <Widget>[
            //           Container(
            //             width: 90,
            //             height: 90,
            //             margin: EdgeInsets.only(right: 15),
            //             decoration: BoxDecoration(
            //               gradient: LinearGradient(
            //                 begin: Alignment.topRight,
            //                 end: Alignment.bottomRight,
            //                 stops: [0.1, 1],
            //                 colors: [
            //                   Color(0xFF8C68EC),
            //                   Color(0xFF3E8DF3),
            //                 ],
            //               ),
            //               borderRadius: BorderRadius.circular(100),
            //             ),
            //             child: Icon(
            //               Icons.chat,
            //               color: Colors.white,
            //             ),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.only(top: 10),
            //             child: Text('Group Name'),
            //           )
            //         ],
            //       );
            //     },
            //   ),
            // ),
            // CustomHeading(
            //   title: 'Direct Messages',
            // ),
            ListView.builder(
              padding: EdgeInsets.only(top: 0),
              itemCount: 3,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Material(
                  child: InkWell(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => ChatDetails(),
                    //     ),
                    //   );
                    // },
                    child: Container(
                      // color: Colors.white,
                      // margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withAlpha(50),
                            offset: Offset(0, 0),
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: <Widget>[
                          // Stack(
                          //   children: <Widget>[
                          //     Container(
                          //       child: CircleAvatar(
                          //         backgroundImage: NetworkImage(
                          //             'https://placekitten.com/300/30$index'),
                          //         minRadius: 35,
                          //         backgroundColor: Colors.grey[200],
                          //       ),
                          //     ),
                          //   ],
                          // ),

                          Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: new BoxDecoration(
                              // shape: BoxShape.circle,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  image: new NetworkImage(
                                      "https://placekitten.com/300/30$index")))),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Niko Jamal',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                ),
                                // Text(
                                //   'Hi How are you ?',
                                //   style: TextStyle(
                                //     color: Color(0xff8C68EC),
                                //     fontSize: 14,
                                //   ),
                                // ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                ),
                                Row(
                                  children: <Widget>[
                                    // Text("Hi"),
                                    Icon(CustomIcons.map_marker, size: 15.0, color: Colors.red,),
                                  
                                    Text("11km")
                                  ]
                                )
                                // Text(
                                //   '11 km',
                                //   style: TextStyle(
                                //     color: Colors.deepOrangeAccent,
                                //     fontSize: 14,
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
                                  CustomIcons.heart,
                                  color: Colors.pink,
                                  size: 24,
                                ),
                              )
                            ],
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
