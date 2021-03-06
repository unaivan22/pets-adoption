import 'package:flutter/material.dart';
import 'package:pets_adoption/src/TestRoute.dart';
import 'Foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:pets_adoption/extensions/custom_icons.dart';
import 'NotificationPage.dart';
import 'settingNearest.dart';
import 'DetailPet.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sticky_headers/sticky_headers.dart';

String selectedCategorie = "All";

class NearestPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<NearestPage> {
  List<String> categories = [
    "All",
    "Cat",
    "Dog",
    "Reptile",
    "Bird",
    "Monkey",
    "Fish",
    "Other"
  ];

  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoPageScaffold(
        //   navigationBar: CupertinoNavigationBar(middle: Text("Home"),),
        //     child: Center(
        //   child: Text("Nearest"),
        // )
        // resizeToAvoidBottomInset: false,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              CupertinoSliverNavigationBar(
                heroTag: 'nearesPage',
                largeTitle: Text("Nearest"),
                leading: new CupertinoButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingNearestPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Setting',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  padding: EdgeInsets.all(0.0),
                ),
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
                // trailing: new Text('Setting', style: TextStyle(color: Colors.blueAccent),),
              )
            ];
          },
          body: SingleChildScrollView(
            // child: Row(
              
            // ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                StickyHeader(header: Container(
                    padding: EdgeInsets.only(right:10.0,),
                    // color: Colors.pink,
                    margin: EdgeInsets.only(top: 20.0, bottom: 40.0),
                    height: 40,
                    child: ListView.builder(
                        itemCount: categories.length,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CategorieTile(
                            categorie: categories[index],
                            isSelected: selectedCategorie == categories[index],
                            context: this,
                          );
                        }),
                  ), 
                content: Container(
          // child: Image.network(imageForIndex(index), fit: BoxFit.cover,
            // width: double.infinity, height: 200.0),
        ),),
                    
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //ROW 1
                  children: [
                    // GestureDetector(
                    //       onTap:() {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => DetailPetPage(),
                    //       ),
                    //     );
                    //   },
                    //   child: Column(
                    //   children: <Widget>[
                    //     Container(
                    //     width: 120.0,
                    //     height: 120.0,
                    //     decoration: new BoxDecoration(
                    //         shape: BoxShape.circle,
                    //         image: new DecorationImage(
                    //             fit: BoxFit.cover,
                    //             image: new NetworkImage(
                    //                 "https://images.unsplash.com/photo-1533743983669-94fa5c4338ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1283&q=80")))),
                    //   ],
                    //   ),
                    // ),
                    Container(
                        width: 120.0,
                        height: 120.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://images.unsplash.com/photo-1533743983669-94fa5c4338ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1283&q=80")))),
                    Container(
                        margin: EdgeInsets.only(top: 100.0),
                        width: 120.0,
                        height: 120.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://images.unsplash.com/photo-1472491235688-bdc81a63246e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")))),
                    Container(
                        width: 120.0,
                        height: 120.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://images.unsplash.com/photo-1560743641-3914f2c45636?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80")))),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //ROW 1
                  children: [
                    Container(
                        width: 120.0,
                        height: 120.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://images.unsplash.com/photo-1520315342629-6ea920342047?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80")))),
                    Container(
                        margin: EdgeInsets.only(top: 100.0),
                        width: 120.0,
                        height: 120.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://images.unsplash.com/photo-1511275539165-cc46b1ee89bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")))),
                    Container(
                        width: 120.0,
                        height: 120.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")))),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //ROW 1
                  children: [
                    Container(
                        width: 120.0,
                        height: 120.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://images.unsplash.com/photo-1537151608828-ea2b11777ee8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=639&q=80")))),
                    Container(
                        margin: EdgeInsets.only(top: 100.0),
                        width: 120.0,
                        height: 120.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://images.unsplash.com/photo-1543466835-00a7907e9de1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80")))),
                    Container(
                        width: 120.0,
                        height: 120.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80")))),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: Text("Home Page"),
        ),
      );
    }
  }
}

class CategorieTile extends StatefulWidget {
  final String categorie;
  final bool isSelected;
  _HomePageState context;
  CategorieTile({this.categorie, this.isSelected, this.context});

  @override
  _CategorieTileState createState() => _CategorieTileState();
}

class _CategorieTileState extends State<CategorieTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.context.setState(() {
          selectedCategorie = widget.categorie;
        });
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        margin: EdgeInsets.only(left: 8),
        height: 10,
        decoration: BoxDecoration(
            color: widget.isSelected ? Hexcolor('#047AFF') : Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Hexcolor('#047AFF'))),
        child: Text(
          widget.categorie,
          style: TextStyle(
              fontSize: 14,
              color: widget.isSelected ? Hexcolor('#ffffff') : Hexcolor('#047AFF'),),
        ),
      ),
    );
  }
}
