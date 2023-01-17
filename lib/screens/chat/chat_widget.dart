import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatWidget extends StatelessWidget {
  final String messageText;
  final bool isMe;
  const ChatWidget({super.key, required this.isMe, required this.messageText});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: isMe
                ? const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )
                : const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
            color: isMe ? const Color(0xFF635BEB) : const Color(0xFFD2D2D2)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            messageText.toString(),
            style: GoogleFonts.raleway(
                fontSize: 18,
                color:
                    isMe ? const Color(0xFFFFFFFF) : const Color(0xFF000000)),
          ),
        ),
      ),
    );
  }
}

/*class MessagesFormat extends StatelessWidget {
  final bool isMe;
  MessagesFormat({required this.isMe});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Text(
              messages[0],
            ),
            Spacer(),
            Column(
              children: const [
                Text('10:00'),
              ],
            ),
          ],
        ));
  }
}*/
