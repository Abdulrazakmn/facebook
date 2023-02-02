import 'package:facebook/asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Avathar extends StatelessWidget {
  final String displayimage;
  final bool displaystatus;
  final bool displayboarder;
  final double radius;
  
  Avathar(
      {required this.displayimage,
      required this.displaystatus,
      this.displayboarder = false,
      this.radius=30,});

  @override
  Widget build(BuildContext context) {
    Widget statusindicator;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: displayboarder
                  ? Border.all(color: Colors.blueAccent, width: 3)
                  : Border()),
          child: CircleAvatar(
            radius:radius!=30?radius:radius,
            backgroundImage: AssetImage(displayimage),
          ),
        ),
        statusindicator = displaystatus == true
            ? Positioned(
                bottom: 0,
                right: 8,
                child: Container(
                    decoration: BoxDecoration(
                        border: displayboarder
                            ? Border.all(
                                width: 1,
                                color: Color.fromARGB(255, 236, 232, 232))
                            : Border(),
                        shape: BoxShape.circle,
                        color: Colors.greenAccent),
                    width: 10,
                    height: 10))
            : SizedBox()
      ],
    );
    //ClipRRect(borderRadius: BorderRadius.circular(500),child: Image.asset(dulquer,width: 50,height: 100,),);
  }
}
