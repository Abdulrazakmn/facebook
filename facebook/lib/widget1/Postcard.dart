import 'dart:ui';

import 'package:facebook/widget/headersection.dart';
import 'package:facebook/widget1/avathar.dart';
import 'package:facebook/widget1/bluetick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:facebook/home.dart';

import '../asset.dart';
import 'headerbutton.dart';

class Postcard extends StatelessWidget {
  final String photo;
  final String name;
  final String publishedAt;
  final String postimage;
  final String posttitle;
  final bool showbluetick;
  final String likecount;
  final String sharecount;
  final String commentcount;
  const Postcard({
    required this.photo,
    required this.name,
    required this.publishedAt,
    required this.postimage,
    required this.posttitle,
    this.showbluetick = false,
    required this.likecount,
    required this.sharecount,
    required this.commentcount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PostcardHeader(),
          titlesection(),
          imagesection(),
          footersection(),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
          HeaderSection(
            button1: HeaderButton(
                buttontext: "Like",
                iconData: Icons.thumb_up,
                buttonaction: (() {
                  print("Like");
                }),
                iconcolour: Colors.grey),
            button2: HeaderButton(
                buttontext: "Comment",
                iconData: Icons.message_outlined,
                buttonaction: (() {
                  print("Comment");
                }),
                iconcolour: Colors.grey),
            button3: HeaderButton(
                buttontext: "Room",
                iconData: Icons.share_outlined,
                buttonaction: (() {
                  print("share");
                }),
                iconcolour: Colors.grey),
          ),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          )
          //  HeaderSection(button1:hea,button2: ,button3:)
        ],
      ),
    );
  }

  Widget footersection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Row(
            children: [
              Container(
                  height: 15,
                  width: 15,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: Icon(
                    Icons.thumb_up,
                    size: 15,
                  )),
              displayText(likecount)
            ],
          )),
          Container(
            padding: EdgeInsets.only(left: 50),
            child: Row(
              children: [
                displayText(commentcount),
                SizedBox(
                  width: 5,
                ),
                displayText("comments"),
                SizedBox(
                  width: 5,
                ),
                displayText(sharecount),
                SizedBox(
                  width: 5,
                ),
                displayText("shares"),
                Avathar(
                  displayimage: photo,
                  displaystatus: false,
                  radius: 15,
                ),
                IconButton(
                    onPressed: (() {
                      {
                        print("you have presed top down button");
                      }
                    }),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText(@required String label) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget imagesection() {
    return Container(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        child: Image.asset(postimage));
  }

  Widget titlesection() {
    return  posttitle!=null||posttitle!="" ?Container(padding: EdgeInsets.only(left: 10,right: 10),
      child: Text(
        posttitle ==  null ? "" : posttitle,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    ):SizedBox();
  }

  Widget PostcardHeader() {
    return ListTile(
      leading: Avathar(displayimage: photo, displaystatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(width: 10),
          showbluetick ? Bluetick() : SizedBox()
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            size: 15,
            color: Colors.grey[700],
          )
        ],
      ),
      trailing: IconButton(
          onPressed: (() {
            print("pressed icon");
          }),
          icon: Icon(
            Icons.more_horiz_outlined,
            color: Colors.grey[700],
          )),
    );
  }
}
