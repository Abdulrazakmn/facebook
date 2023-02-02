import 'dart:ui';

import 'package:facebook/asset.dart';
import 'package:facebook/widget/headersection.dart';
import 'package:facebook/widget/circulatbutton.dart';
import 'package:facebook/widget/roomsection.dart';
import 'package:facebook/widget/storysection.dart';
import 'package:facebook/widget/suggestionsection.dart';
import 'package:facebook/widget1/Postcard.dart';
import 'package:facebook/widget1/avathar.dart';
import 'package:facebook/widget1/headerbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  Widget thindevider = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );
  Widget thickdevider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          "facebook",
          style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 6, 110, 230)),
        ),
        actions: [
          Circularbutton(
              symbol: Icons.search,
              pressed: (() {
                print("you have pressed search button");
              })),
          Circularbutton(
              symbol: Icons.add,
              pressed: (() {
                print("you have pressed add button");
              })),
          Circularbutton(
              symbol: Icons.messenger,
              pressed: (() {
                print("you have pressed messenger button");
              }))
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Avathar(
              displayimage: dulquer,
              displaystatus: false,
            ),
            title: TextField(
                decoration: InputDecoration(
                    hintText: "type something?",
                    hintStyle: TextStyle(color: Colors.black),
                    // focusedBorder: InputBorder.none,
                    // errorBorder: InputBorder.none,
                    // disabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    enabledBorder: InputBorder
                        .none //,focusedErrorBorder: InputBorder.none,enabledBorder: InputBorder.none
                    )),
          ),
          thindevider,
          HeaderSection(
            button1: HeaderButton(
                buttontext: "live",
                iconData: Icons.video_call,
                buttonaction: (() {
                  print("go live");
                }),
                iconcolour: Colors.red),
            button2: HeaderButton(
                buttontext: "Photo",
                iconData: Icons.photo_album,
                buttonaction: (() {
                  print("Photo");
                }),
                iconcolour: Color.fromARGB(255, 12, 235, 19)),
            button3: HeaderButton(
                buttontext: "Room",
                iconData: Icons.video_call,
                buttonaction: (() {
                  print("room");
                }),
                iconcolour: Colors.purple),
          ),
          thickdevider,
          RoomSection(),
          thickdevider,
          Storysection(),
          thickdevider,
          Postcard(
            showbluetick: true,
            photo: mohanlal,
            name: "Mohanlal",
            publishedAt: '5h',
            postimage: diwali,
            posttitle: 'Happy diwali',
            commentcount: '1K',
            likecount: '10K',
            sharecount: '50',
          ),
          thickdevider,
          Postcard(
            showbluetick: true,
            photo: sureshgopi,
            name: "SureshGopi",
            publishedAt: '5h',
            postimage: sureshdiwali,
            posttitle: "",
            commentcount: '10K',
            likecount: '10K',
            sharecount: '50',
          ),
          thickdevider,
           Suggestionsection(),
           thickdevider,
          
          
          Postcard(
            showbluetick: true,
            photo: dulquer,
            name: "Dulquer salman",
            publishedAt: '5h',
            postimage: kotha,
            posttitle: kothamovietext,
            commentcount: '10K',
            likecount: '9K',
            sharecount: '5K',
          ),
         
        ],
      ),
    ));
  }
}
