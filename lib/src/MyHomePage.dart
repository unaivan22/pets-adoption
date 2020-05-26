import 'package:flutter/material.dart';
import 'Foundation.dart';
import 'package:flutter/cupertino.dart';
import 'NearestPage.dart';
import 'WishPage.dart';
import 'ChatPage.dart';
import 'ProfilePage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                icon: Icon(CupertinoIcons.paw_solid), title: Text("Nearest")),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart_solid), title: Text("Wish")),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.mail_solid), title: Text("Chat")),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_solid), title: Text("Profile"))
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
