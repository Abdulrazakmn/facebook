import 'package:facebook/asset.dart';
import 'package:facebook/widget1/storycard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Storysection extends StatelessWidget {
  const Storysection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Storycard(
            labeltext: "Add  To Story",
            story: dulquer,
            avathar: dulquer,
            createstorystatus: true,
          ),
          Storycard(
            createstorystatus: false,
            labeltext: "Mohan lal",
            story: onam,
            avathar: mohanlal,
            displayboarder: true,
          ),
          Storycard(
            labeltext: "Suresh Gopi",
            story: diwali,
            avathar: sureshgopi,
            storystatus: true,
            displayboarder: true,
          ),
          Storycard(
              labeltext: "Abdul Razak",
              story: bakrid,
              avathar: razak,
              storystatus: true,
              displayboarder: true),
          Storycard(
            labeltext: "mamooty",
            story: mamooka,
            avathar: onam,
            displayboarder: true,
          ),
          Storycard(
            labeltext: "nivin",
            story: nivin,
            avathar: onam,
            displayboarder: true,
          )
        ],
      ),
    );
  }
}
