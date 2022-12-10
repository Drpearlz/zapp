import 'package:flutter/material.dart';
import 'package:zapp/models/users_test.dart';


class MessageScreen extends StatefulWidget {
   MessageScreen({required this.data,super.key});
  Users data;

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          title: const Text("Messaging"),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 23),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFF2972fe).withOpacity(0.1),
              ),
              child: IconButton(
            icon: const Icon(Icons.more_vert_rounded),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
            )
          ],
        ),
        body: Center(
          child: Text(widget.data.name),
        ));
  }
}
