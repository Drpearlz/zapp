import 'package:zapp/models/all_users.dart';

class AllChats {
  String name;
  String? about;
  String time;
  String? image;
  bool isOnline;

  AllChats(
      {this.about,
      this.image,
      required this.name,
      required this.time,
      required this.isOnline});
}

List<AllChats> allChats = [
  AllChats(
      name: userList.first.name,
      time: "1 min",
      isOnline: false,
      about: "This short story the magic pot"),
];
