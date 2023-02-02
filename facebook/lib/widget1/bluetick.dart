import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Bluetick extends StatelessWidget {
  const Bluetick({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
      child: Icon(size:10,Icons.check,color: Colors.white,)
    );
  }
}
