import 'package:flutter/material.dart';
import 'package:zapp/components/chat_tile.dart';
import 'package:zapp/models/users_test.dart';
import 'package:zapp/screens/chat_screen/message_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: userList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                MessageScreen(data: userList[index],)));
                                  },
                                  child: ChatTile(
                                    messageAmount:
                                        userList[index].messageAmount,
                                    name: userList[index].name,
                                    about: userList[index].about,
                                    image: userList[index].image,
                                    time: userList[index].time,
                                    isOnline: userList[index].isOnline,
                                  ),
                                ),
                                const Divider()
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
