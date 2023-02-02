import 'package:facebook/asset.dart';
import 'package:facebook/widget1/avathar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          createRoomutton(),
          Avathar(displayimage: razak2, displaystatus: true,),
          Avathar(displayimage: mohanlal, displaystatus: true,),
          Avathar(displayimage: sureshgopi, displaystatus: true,),
          Avathar(displayimage: nivin, displaystatus: true,),
          Avathar(displayimage: razak, displaystatus: true
          ,),
          Avathar(displayimage: lalu, displaystatus: true,)
        ],
      ),
    );
  }

  Widget createRoomutton() {
    return Container(padding: EdgeInsets.only(left: 5,right: 5),
      child: OutlinedButton.icon(
          style: ButtonStyle(
              side: MaterialStatePropertyAll(
                  BorderSide(color: Color.fromARGB(255, 75, 159, 228))),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)))),
          onPressed: () {
            print("you have pressed vide");
          },
          icon: Icon(
            Icons.video_call,
            color: Colors.purple,
            size: 20,
          ),
          label: Text(
            "Create\nroom",
            style: TextStyle(fontSize: 10),
          )),
    );
  }
}
