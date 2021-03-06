import 'package:flutter/material.dart';
import 'package:hoopr/services/db.dart';
import 'ballerCard.dart';
import 'package:provider/provider.dart';
import 'user_list.dart';
import 'models/user.dart';

class LeaderboardDemo extends StatelessWidget {
  LeaderboardDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<User>>.value(
        value: DatabaseService().users,
        child: Scaffold(
          backgroundColor: const Color(0xff001331),
          body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "LEADERBOARD",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0),
                            textAlign: TextAlign.center,
                          )
                        ])),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Stack(
                          alignment: Alignment.bottomCenter,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage('assets/raysmall.png'),
                            ),
                            Icon(Icons.looks_two)
                          ]),
                      Stack(
                          alignment: Alignment.bottomCenter,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage('assets/raysmall.png'),
                            ),
                            Icon(Icons.looks_one),
                          ]),
                      Stack(
                          alignment: Alignment.bottomCenter,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage('assets/raysmall.png'),
                            ),
                            Icon(Icons.looks_3)
                          ]),
                    ],
                  ),
                ),
                Expanded(flex: 4, child: LeaderboardUserList())
              ],
            ),
          ),
        ));
  }
}

/*
Stack(children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(5),
                        child: Image(image: AssetImage('assets/raysmall.png'))),
                  ]),
                  Stack(children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(5),
                        child: Image(image: AssetImage('assets/raysmall.png'))),
                  ]),
                  Stack(children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(5),
                        child: Image(image: AssetImage('assets/raysmall.png'))),
                  ]),
*/
