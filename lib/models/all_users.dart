class Users {
  String name;
  String? about;
  String? image;
  bool isOnline;

  Users(
      {this.about,
      this.image,
      required this.name,
      required this.isOnline});
}

List<Users> userList = [
  Users(
    
      name: "Peggy Roxy",
      isOnline: true,
      about: "This short story the magic pot"),
  Users(
      name: "Black Shyd",
      isOnline: false,
      about: "This short story the magic pot"),
  Users(
      name: "Jeffrey",
      isOnline: true,
      about: "This short story the magic pot"),
  Users(
      name: "Collins",
      isOnline: false,
      about: "This short story the magic pot"),
  Users(
      name: "Rapp Jeremiah",
      isOnline: false,
      about: "This short story the magic pot"),
  Users(
      name: "Samuel",
      isOnline: true,
      image: "assets/images/person.jpg",
      about: "A flutter Dev"),
];
