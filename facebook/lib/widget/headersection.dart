import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widget1/headerbutton.dart';

class HeaderSection extends StatelessWidget {
  final Widget  button1;
  final Widget  button2;
  final Widget  button3;
  const HeaderSection({
    required this.button1,
    required this.button2,
    required this.button3,
  });
 

  @override
  Widget build(BuildContext context) {
    Widget verticaldevider =
        VerticalDivider(thickness: 1, color: Colors.grey[300]);
    return Container(
      color: Colors.white,
      height: 40,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
       button1,
        verticaldevider,
       button2,
        VerticalDivider(thickness: 1, color: Colors.grey[300]),
        button3
       
      ]),
    );
  }
}
