import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  ChatTile({
    this.about,
    this.image,
    required this.messageAmount,
    required this.name,
    required this.time,
    required this.isOnline,
    super.key,
  });

  int messageAmount;
  String name;
  String? about;
  String time;
  String? image;
  bool isOnline;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Stack(children: [
                    ClipOval(
                      child: Image.asset(
                        image ??= "assets/images/noimage.png",
                        width: 48,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        backgroundColor: isOnline ? Colors.green : Colors.grey,
                        radius: 7,
                      ),
                    )
                  ]),
                  const SizedBox(
                    width: 8,
                  ),
                  about == null
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              about!,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(time),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: const Color(0xFF635BEB),
              ),
              child: Text(
                "$messageAmount",
                style: const TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
