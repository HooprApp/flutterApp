import 'package:flutter/material.dart';
import 'package:hoopr/ballerCard.dart';
import 'package:provider/provider.dart';

class LeaderboardUserList extends StatefulWidget {
  @override
  _LeaderboardUserListState createState() => _LeaderboardUserListState();
}

class _LeaderboardUserListState extends State<LeaderboardUserList> {
  @override
  Widget build(BuildContext context) {
    List<User> users = Provider.of<List<User>>(context);
    List<User> sortedUsers = [];

    while (users.length > 0) {
      User high = users[0];

      for (var i = 0; i < users.length; i++) {
        if (users[i].bp > high.bp) {
          high = users[i];
        }
      }
      sortedUsers.add(high);
      users.remove(high);
    }

    return ListView.builder(
        itemCount: sortedUsers.length,
        itemBuilder: (context, index) {
          return LeaderBallerCard(
              bp: sortedUsers[index].bp,
              name: sortedUsers[index].username,
              pic: AssetImage('assets/raysmall.png'));
        });
  }
}

class ChallengesUserList extends StatefulWidget {
  @override
  _ChallengesUserListState createState() => _ChallengesUserListState();
}

class _ChallengesUserListState extends State<ChallengesUserList> {
  @override
  Widget build(BuildContext context) {
    List<User> users = Provider.of<List<User>>(context);
    //List<User> sortedUsers = [];

    // while (users.length > 0) {

    //   sortedUsers.add(__);
    //   users.remove(__);
    // }

    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ChallengeBallerCard(
              bp: users[index].bp,
              name: users[index].username,
              pic: AssetImage('assets/raysmall.png'));
        });
  }
}
