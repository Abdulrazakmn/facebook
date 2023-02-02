import 'package:facebook/asset.dart';
import 'package:facebook/widget1/suggestioncard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Suggestionsection extends StatelessWidget {
  const Suggestionsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ListTile(
            title: Text("People you may know"),
            trailing: IconButton(
                onPressed: (() {
                  print("you pressed section icon");
                }),
                icon: Icon(
                  Icons.more,
                  color: Colors.grey[700],
                )),
          ),
          Container(
            child: SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Suggestioncard(
                    avathar: dulquer,
                    name: 'Abdul razak',
                    mutualfriends: '144 mutual friend',
                  ),
                  Suggestioncard(
                      avathar: sureshgopi,
                      name: "Sureshgopi",
                      mutualfriends: "178 mutual friends"),
                  Suggestioncard(
                      avathar: lalu,
                      name: " Lalu alex",
                      mutualfriends: "100 mutual friends"),
                      Suggestioncard(
                    avathar: dulquer,
                    name: 'Abdul razak',
                    mutualfriends: '144 mutual friend',
                  ),
                  Suggestioncard(
                      avathar: sureshgopi,
                      name: "Sureshgopi",
                      mutualfriends: "178 mutual friends"),
                  Suggestioncard(
                      avathar: lalu,
                      name: " Lalu alex",
                      mutualfriends: "100 mutual friends")
                ],
              ),
            ),
          )
        ],
      ),
    );
    // Container(
    //   child: ListView(
    //     scrollDirection: Axis.horizontal,
    //     children: [Suggestioncard()],
    //   ),
    // )
  }
}
