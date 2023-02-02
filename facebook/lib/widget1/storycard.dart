import 'package:facebook/asset.dart';
import 'package:facebook/widget/circulatbutton.dart';
import 'package:facebook/widget1/avathar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Storycard extends StatelessWidget {
  final String labeltext;
  final String story;
  final String avathar;
  final bool createstorystatus;
  final bool storystatus;
  final bool displayboarder;

  Storycard(
      {required this.labeltext,
      required this.story,
      required this.avathar,
      this.createstorystatus=false,this.storystatus=false,this.displayboarder=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(image: AssetImage(story), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
              left: 5,
              top: 5,
              child:createstorystatus? Circularbutton(
                symbol: Icons.add,
                pressed: (() {
                  print("pressed story add button");
                }),
                iconcolour: Colors.blue,
              )
              :Avathar(displayimage: avathar, displaystatus: false,displayboarder: displayboarder,)),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                createstorystatus!=false?labeltext:labeltext,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ))
        ],
      ),
    );
  }
}
