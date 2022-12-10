class Users {
  int messageAmount;
  String name;
  String? about;
  String time;
  String? image;
  bool isOnline;

  Users(
      {this.about,
      this.image,
      required this.messageAmount,
      required this.name,
      required this.time,
      required this.isOnline});
}

List<Users> userList = [
  Users(
      messageAmount: 6,
      name: "Thanawan Chadee",
      time: "1 min",
      isOnline: false,
      about: "This short story the magic pot"),
  Users(
      messageAmount: 5,
      name: "Patrícia Ribeiro",
      time: "7 min",
      isOnline: true,
      image: "assets/images/Avatar.png"),
  Users(
      messageAmount: 6,
      name: "Jordanna Kitchener",
      time: "1 min",
      isOnline: false,
      about: "This short story the magic pot"),
  Users(
      messageAmount: 5,
      name: "Patrícia Ribeiro",
      time: "7 min",
      isOnline: true,
      image: "assets/images/person.jpg"),
  Users(
      messageAmount: 6,
      name: "Thanawan Chadee",
      time: "1 min",
      isOnline: false,
      about: "This short story the magic pot",
      image: "assets/images/lady.png"),
  Users(
      messageAmount: 5,
      name: "Patrícia Ribeiro",
      time: "7 min",
      isOnline: true,
      image: "assets/images/person.jpg"),
];
