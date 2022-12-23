import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zapp/screens/chat/chat_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List messages = [
      'Hello Adam, I am Dr. Chidindu Green.\nLet’s get to the root of  your discomfort.',
      'First can you tell me about your illness so far',
      'This is very important so that I can\n help identify your disease and\n the solution 😁',
      'Hello, Dr. Chidindu',
      'I have been having this heavy feeling\n in my chest for 2 days now, i don’t\n know what it is. I often feel tired and \n out of breath too.',
    ];
    return Scaffold(
        /* appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Messaging',
            style: GoogleFonts.raleway(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          leading: Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back));
            },
          ),
        ),*/
        body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Gap(30),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Color(0xFF432C81),
                ),
                const Gap(15),
                Text(
                  'Messaging',
                  style: GoogleFonts.raleway(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                const Spacer(),
                const Icon(
                  Icons.menu,
                  size: 25,
                  color: Color(0xFF7B6CA8),
                ),
              ],
            ),
          ),
          Gap(20),
          Container(
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey)),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/chat_doctor.png'),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Chidindu Green',
                        style: GoogleFonts.raleway(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Gap(10),
                      const Text('10:00-10:30AM')
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(18),
              children: [
                ChatWidget(
                  isMe: false,
                  messageText: messages[0],
                ),
                ChatWidget(
                  isMe: false,
                  messageText: messages[1],
                ),
                ChatWidget(
                  isMe: false,
                  messageText: messages[2],
                ),
                ChatWidget(
                  isMe: true,
                  messageText: messages[3],
                ),
                ChatWidget(
                  isMe: true,
                  messageText: messages[4],
                ),
                Spacer(),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Color(0xff12173A), width: 2.0),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      hintText: 'Type your message here...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.send))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
/*Row(
children: const [
Icon(Icons.arrow_back, color: Colors.lightBlueAccent),
Gap(10),
Padding(
padding: EdgeInsets.all(8.0),
child: Text(
'Messaging',
style: GoogleFonts.raleway(
fontSize: 22,
),
),
),
Spacer(),

],
),*/
