import 'package:flutter/material.dart';
// import 'Foundation.dart';
import 'package:flutter/cupertino.dart';
// import 'custom_icons.dart';

class TestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Settings'),
            )
          ];
        },
        body: Center(child: Text('Home Page'),),
      ),
    );
  }
}
