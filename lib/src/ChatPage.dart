import 'package:flutter/material.dart';
import 'Foundation.dart';
import 'package:flutter/cupertino.dart';
import 'chat_detail.dart';
import 'custom_icons.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'NotificationPage.dart';
import 'package:badges/badges.dart';
import 'package:hexcolor/hexcolor.dart';


String selectedCategorie= "All";


class ChatPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<ChatPage> {
  
  List<String> categories = ["All","Unread","Read","Done"];

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
                heroTag: 'chatPage',
                largeTitle: Text('Chat'),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.only(top: 8.0, bottom: 16.0),
                  child: CupertinoTextField(
                  clearButtonMode: OverlayVisibilityMode.editing,
                  // controller: _myPhoneField,  // Add this
                  prefix: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      CupertinoIcons.search,
                      color: Hexcolor('#848387'),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  keyboardType: TextInputType.text,
                  maxLength: 10,
                  maxLines: 1,
                  maxLengthEnforced: true,
                  placeholder: 'Search',
                  // onChanged: (v) {
                  //   print(v);
                  // },
                  decoration: BoxDecoration(
                    color: Hexcolor('#eeeeee'),
                    border: Border.all(
                      width: 1.0,
                      color: Hexcolor('#EEEEEE'),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
                // Container(
                //   // padding: EdgeInsets.all(10.0),
                //   // color: Colors.pink,
                //   margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
                //   height: 40,
                //   child: ListView.builder(
                //   itemCount: categories.length,
                //       shrinkWrap: true,
                //       physics: ClampingScrollPhysics(),
                //       scrollDirection: Axis.horizontal,
                //       itemBuilder: (context, index){
                //     return CategorieTile(
                //       categorie: categories[index],
                //       isSelected: selectedCategorie == categories[index],
                //       context: this,
                //     );
                //       }),
                // ),
                ListView.builder(
                  padding: EdgeInsets.only(top: 0),
                  itemCount: 40,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatDetails(),
                            ),
                          );
                        },
                        child: Container(
                          color: Colors.white,
                          // margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                          padding: EdgeInsets.only(top: 15.0, right: 15.0, bottom: 15.0, left: 15.0),
                          // decoration: BoxDecoration(
                          //   boxShadow: [
                          //     BoxShadow(
                          //       color: Colors.grey.withAlpha(50),
                          //       offset: Offset(0, 0),
                          //       blurRadius: 5,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.circular(5),
                          //   color: Colors.white,
                          // ),
                          child: Row(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://i.pravatar.cc/11$index'),
                                      minRadius: 30,
                                      backgroundColor: Colors.white,
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
                                      'Unaivan',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                    ),
                                    Text(
                                      'Ready Om. Lokasi Madiun Selatan, kalau minat langsung pantau aja om',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                    ),
                                    Text(
                                      '11:00 AM',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                   Badge(
                                    badgeColor: Colors.deepPurple,
                                    badgeContent: Text('$index', style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w700)),
                                    ),
                                  ],
                                ),
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


class CategorieTile extends StatefulWidget {

  final String categorie;
  final bool isSelected;
  _HomePageState context;
  CategorieTile({this.categorie, this.isSelected,this.context});

  @override
  _CategorieTileState createState() => _CategorieTileState();
}


class _CategorieTileState extends State<CategorieTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.context.setState(() {
          selectedCategorie = widget.categorie;
        });
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(left: 8),
        height: 20,
        decoration: BoxDecoration(
          color: widget.isSelected ? Color(0xffFFD0AA) : Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.orange)
        ),
        child: Text(widget.categorie, style: TextStyle(
          color: widget.isSelected ?  Color(0xffFC9535) : Color(0xffA1A1A1)
        ),),
      ),
    );
  }
}