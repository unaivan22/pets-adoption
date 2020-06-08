import 'package:flutter/material.dart';
import 'Foundation.dart';
import 'package:flutter/cupertino.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'custom_icons.dart' as CustomIcons;
import 'package:pets_adoption/extensions/custom_icons.dart';
import 'NearestPage.dart';
import 'WishPage.dart';
import 'ChatPage.dart';
import 'ProfilePage.dart';
import 'package:hexcolor/hexcolor.dart';

class MyHomePageBase extends StatefulWidget {
  MyHomePageBase({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageBaseState createState() => _MyHomePageBaseState();
}

class _MyHomePageBaseState extends State<MyHomePageBase> {
  int currentTabIndex = 0;

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  List<Widget> tabs = [
    NearestPage(),
    WishPage(),
    ChatPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(items: [
            BottomNavigationBarItem(
                icon: Icon(CustomIcons.paw, size: 22.0,), ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart_solid, size: 24.0,),),
            BottomNavigationBarItem(
                icon: Icon(CustomIcons.comments, size: 22.0,)),
            BottomNavigationBarItem(
                icon: Icon(CustomIcons.user_alt, size: 21.0,),)
            // BottomNavigationBarItem(
            // icon: Icon(CustomIcons.user_alt, size: 21.0,), title: Text("Profile"))
          ]),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return NearestPage();
                break;
              case 1:
                return WishPage();
                break;
              case 2:
                return ChatPage();
                break;
              case 3:
                return ProfilePage();
                break;
              default:
                return NearestPage();
                break;
            }
          });
    }
    //Android Scafold
    else {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        // Body Where the content will be shown of each page index
        body: tabs[currentTabIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentTabIndex,
            onTap: onTapped,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), title: Text("Search")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("User Info"))
            ]),
      );
    }
  }
}
