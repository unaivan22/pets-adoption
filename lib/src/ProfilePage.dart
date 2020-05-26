import 'package:flutter/material.dart';
import 'Foundation.dart';
import 'package:flutter/cupertino.dart';

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
              )
            ];
          },
          body: Center(
            child: Text('Profile'),
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
