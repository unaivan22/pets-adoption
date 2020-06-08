import 'package:flutter/material.dart';
// import 'Foundation.dart';
import 'package:flutter/cupertino.dart';
// import 'custom_icons.dart';
import 'package:pets_adoption/extensions/custom_icons.dart';

class DetailPetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return CupertinoApp(
      home: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("Title"),
            
            // SliverAppBar(
            //   expandedHeight: 200.0,
            //   floating: false,
            //   pinned: true,
            //   flexibleSpace: FlexibleSpaceBar(
            //       centerTitle: true,
            //       title: Text("Collapsing Toolbar",
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 16.0,
            //           )),
            //       background: Image.network(
            //         "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
            //         fit: BoxFit.cover,
            //       )),
            // ),
          ),
          // SliverList(
          //   delegate: SliverChildListDelegate(
          //     [
          //       Container(
          //         color: Colors.blue,
          //         height: 500,
          //       ),
          //       Divider(),
          //       Container(
          //         color: Colors.black12,
          //         height: 500,
          //       ),
          //       Divider(),
          //       Container(
          //         color: Colors.lightBlue,
          //         height: 500,
          //       ),
          //       Divider(),
          //       Container(
          //         color: Colors.lightGreen,
          //         height: 500,
          //       ),
          //       Divider(),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
