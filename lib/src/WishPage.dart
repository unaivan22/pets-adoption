import 'package:flutter/material.dart';
import 'Foundation.dart';
import 'package:flutter/cupertino.dart';

class WishPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoPageScaffold(
        
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: Text('Wish of Adoptions'),
              )
            ];
          },
          body: Center(
            child: Text('Wish'),
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: Text("Search Page"),
        ),
      );
    }
  }
}
