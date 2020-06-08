import 'package:flutter/material.dart';
// import 'Foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pets_adoption/extensions/custom_icons.dart';
import 'ProfilePage.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Edit Profile"),
        trailing: new CupertinoButton(
          child: new Stack(children: <Widget>[
            // new Icon(CustomIcons.bell, color: Colors.grey,),
            Text('Save')
          ]),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          },
          padding: EdgeInsets.all(0.0),
        ),
      ),
      child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              // CupertinoSliverNavigationBar(
              //   largeTitle: Text('Settings'),
              // )
            ];
          },
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  // child: Stack(
                  //   children: <Widget>[
                  //     Container(
                  //       padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  //       child: Text('Hello',
                  //           style: TextStyle(
                  //               fontSize: 80.0, fontWeight: FontWeight.bold)),
                  //     ),
                  //     Container(
                  //       padding: EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
                  //       child: Text('There',
                  //           style: TextStyle(
                  //               fontSize: 80.0, fontWeight: FontWeight.bold)),
                  //     ),
                  //     Container(
                  //       padding: EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                  //       child: Text('.',
                  //           style: TextStyle(
                  //               fontSize: 80.0,
                  //               fontWeight: FontWeight.bold,
                  //               color: Colors.green)),
                  //     )
                  //   ],
                  // ),
                  ),
              Container(
                  color: Hexcolor('#f9f9f9'),
                  margin: EdgeInsets.only(top: 20.0),
                  padding: EdgeInsets.only(
                      top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: CupertinoTextField(
                          clearButtonMode: OverlayVisibilityMode.editing,
                          // controller: _myPhoneField,  // Add this
                          prefix: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Name:'),
                          ),
                          padding: EdgeInsets.all(10.0),
                          placeholder: "Username",
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: CupertinoTextField(
                          clearButtonMode: OverlayVisibilityMode.editing,
                          prefix: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Username:'),
                          ),
                          padding: EdgeInsets.all(10.0),
                          placeholder: "Username",
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: CupertinoTextField(
                          clearButtonMode: OverlayVisibilityMode.editing,
                          prefix: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Email:'),
                          ),
                          padding: EdgeInsets.all(10.0),
                          placeholder: "Email",
                        ),
                      ),
                      // TextField(
                      //   decoration: InputDecoration(
                      //       labelText: 'EMAIL',
                      //       labelStyle: TextStyle(
                      //           fontFamily: 'Montserrat',
                      //           fontWeight: FontWeight.bold,
                      //           color: Colors.grey),
                      //       focusedBorder: UnderlineInputBorder(
                      //           borderSide: BorderSide(color: Colors.green))),
                      // ),
                      // SizedBox(height: 20.0),
                      // TextField(
                      //   decoration: InputDecoration(
                      //       labelText: 'PASSWORD',
                      //       labelStyle: TextStyle(
                      //           fontFamily: 'Montserrat',
                      //           fontWeight: FontWeight.bold,
                      //           color: Colors.grey),
                      //       focusedBorder: UnderlineInputBorder(
                      //           borderSide: BorderSide(color: Colors.green))),
                      //   obscureText: true,
                      // ),
                      // SizedBox(height: 5.0),
                      // Container(
                      //   alignment: Alignment(1.0, 0.0),
                      //   padding: EdgeInsets.only(top: 15.0, left: 20.0),
                      //   child: InkWell(
                      //     child: Text(
                      //       'Forgot Password',
                      //       style: TextStyle(
                      //           color: Colors.green,
                      //           fontWeight: FontWeight.bold,
                      //           fontFamily: 'Montserrat',
                      //           decoration: TextDecoration.underline),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(height: 40.0),
                      // Container(
                      //   height: 40.0,
                      //   child: Material(
                      //     borderRadius: BorderRadius.circular(20.0),
                      //     shadowColor: Colors.greenAccent,
                      //     color: Colors.green,
                      //     elevation: 7.0,
                      //     child: GestureDetector(
                      //       onTap: () {},
                      //       child: Center(
                      //         child: Text(
                      //           'LOGIN',
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontWeight: FontWeight.bold,
                      //               fontFamily: 'Montserrat'),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(height: 20.0),
                    ],
                  )),
              SizedBox(height: 15.0),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Text(
              //       'New to Spotify ?',
              //       style: TextStyle(fontFamily: 'Montserrat'),
              //     ),
              //     SizedBox(width: 5.0),
              //     InkWell(
              //       onTap: () {
              //         Navigator.of(context).pushNamed('/signup');
              //       },
              //       child: Text(
              //         'Register',
              //         style: TextStyle(
              //             color: Colors.green,
              //             fontFamily: 'Montserrat',
              //             fontWeight: FontWeight.bold,
              //             decoration: TextDecoration.underline),
              //       ),
              //     )
              //   ],
              // )
            ],
          )),
    );
  }
}
