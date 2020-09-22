import "package:cloud_firestore/cloud_firestore.dart";

class User {
  String userId;
  String fullName;
  String email;
  int points;
  bool isBanned;

  User(this.userId, this.fullName, this.email, this.points, this.isBanned);

  User.fromSnapshot(DocumentSnapshot snapshot) {
    User(snapshot.id, snapshot.get("fullName"), snapshot.get("email"),
        snapshot.get("points"), snapshot.get("isBanned"));
  }

  toJson() {
    return {
      "userId": userId,
      "full_name": fullName,
      "email": email,
      "points": points,
      "isBanned": isBanned
    };
  }

  toPayload() {
    return {
      "full_name": fullName,
      "email": email,
      "points": points,
      "isBanned": isBanned
    };
  }
}