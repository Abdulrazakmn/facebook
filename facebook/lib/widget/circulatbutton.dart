import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Circularbutton extends StatelessWidget {
  final IconData symbol;
  final void Function() pressed;
  final Color iconcolour;

  const Circularbutton({required this.symbol, required this.pressed,this.iconcolour=Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(10),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
      child: IconButton(icon: Icon(symbol,color:iconcolour,), onPressed: pressed),
    );
  }
}

