import 'package:flutter/material.dart';
import 'package:zapp/components/read_chat_tile.dart';
import 'package:zapp/components/unread_chat_tile.dart';
import 'package:zapp/models/all_chats.dart';
import 'package:zapp/models/all_users.dart';
import 'package:zapp/models/unread_chats.dart';
import 'package:zapp/models/usersDB.dart';
import 'package:zapp/screens/chat_screen/message_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
          decoration: BoxDecoration(
              color: const Color(0xFF635BEB),
              borderRadius: BorderRadius.circular(4)),
          width: 56,
          height: 56,
          child: IconButton(
            color: Colors.white,
            icon: const Icon(
              Icons.edit,
            ),
            onPressed: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 24),
                    child: userList.isNotEmpty
                        ? ListView.builder(
                            itemCount: userList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      var list = userList[index];
                                      allChats.add(AllChats(
                                          name: list.name,
                                          time: "",
                                          isOnline: list.isOnline,
                                          about: list.about,
                                          image: list.image));
                                      setState(() {});
                                      userList.removeAt(index);
                                      Navigator.pop(context);
                                    },
                                    child: ReadChatTile(
                                      name: userList[index].name,
                                      about: userList[index].about,
                                      image: userList[index].image,
                                      time: "",
                                      isOnline: userList[index].isOnline,
                                    ),
                                  ),
                                  Container(
                                    height: 0.4,
                                    color: const Color.fromARGB(83, 0, 0, 0),
                                  )
                                ],
                              );
                            })
                        : const Text("All Users in Chat"),
                  );
                },
              );
            },
          )),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              color: const Color(0xFF635BEB),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Chat",
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      ),
                      Icon(
                        Icons.notifications_none,
                        size: 30,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    onTap: () {
                      showSearch(
                          context: context, delegate: MySearchDelegate());
                    },
                    controller: _controller,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.search_rounded),
                          onPressed: () {},
                        ),
                        hintText: "Search Messages",
                        filled: true,
                        fillColor: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 16),
                    alignment: Alignment.centerLeft,
                    height: 52,
                    child: Text(
                      "Unread(${unreadChats.length})",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                      height: unreadChats.length != 1
                          ? unreadChats.length == 2
                              ? 140
                              : 200
                          : 70,
                      child: ListView.builder(
                          itemCount: unreadChats.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                MessageScreen(
                                                  data: userDB[index],
                                                )));
                                  },
                                  child: ChatTile(
                                    messageAmount:
                                        unreadChats[index].messageAmount,
                                    name: unreadChats[index].name,
                                    about: unreadChats[index].about,
                                    image: unreadChats[index].image,
                                    time: unreadChats[index].time,
                                    isOnline: unreadChats[index].isOnline,
                                  ),
                                ),
                                Container(
                                  height: 0.4,
                                  color: const Color.fromARGB(83, 0, 0, 0),
                                )
                              ],
                            );
                          })),
                  Container(
                    padding: const EdgeInsets.only(left: 16),
                    alignment: Alignment.centerLeft,
                    height: 52,
                    child: const Text(
                      "All Chats",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: allChats.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                MessageScreen(
                                                  data: userDB[index],
                                                )));
                                  },
                                  child: ReadChatTile(
                                    name: allChats[index].name,
                                    about: allChats[index].about,
                                    image: allChats[index].image,
                                    time: "11:67pm",
                                    isOnline: allChats[index].isOnline,
                                  ),
                                ),
                                Container(
                                  height: 0.4,
                                  color: const Color.fromARGB(83, 0, 0, 0),
                                )
                              ],
                            );
                          })),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    List<AllChats> _searchList = [];
    for (var element in allChats) {
      if (element.name.toLowerCase().contains(query.toLowerCase())) {
        _searchList.add(element);
      }
    }
    return ListView.builder(
        itemCount: _searchList.length,
        itemBuilder: (context, index) {
          var result = _searchList[index];
          return ReadChatTile(
            name: result.name,
            about: result.about,
            image: result.image,
            isOnline: result.isOnline,
            time: "",
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<AllChats> _searchList = [];
    for (var element in allChats) {
      if (element.name.toLowerCase().contains(query.toLowerCase())) {
        _searchList.add(element);
      }
    }
    return ListView.builder(
        itemCount: _searchList.length,
        itemBuilder: (context, index) {
          var result = _searchList[index];
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => MessageScreen(
                            data: userDB[index],
                          )));
                },
                child: ReadChatTile(
                  name: result.name,
                  about: result.about,
                  image: result.image,
                  time: "",
                  isOnline: result.isOnline,
                ),
              ),
              Container(
                height: 0.4,
                color: const Color.fromARGB(83, 0, 0, 0),
              )
            ],
          );
        });
  }
}
