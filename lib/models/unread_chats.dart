class UnreadChats {
  int messageAmount;
  String name;
  String? about;
  String time;
  String? image;
  bool isOnline;

  UnreadChats(
      {this.about,
      this.image,
      required this.messageAmount,
      required this.name,
      required this.time,
      required this.isOnline});
}

List<UnreadChats> unreadChats = [
  UnreadChats(
      messageAmount: 6,
      name: "Thanawan Chadee",
      time: "1 min",
      isOnline: false,
      about: "This short story the magic pot"),
  UnreadChats(
      messageAmount: 6,
      name: "Thanawan Chadee",
      time: "1 min",
      isOnline: false,
      about: "This short story the magic pot"),
  UnreadChats(
      messageAmount: 6,
      name: "Thanawan Chadee",
      time: "1 min",
      isOnline: false,
      about: "This short story the magic pot"),
  
];
