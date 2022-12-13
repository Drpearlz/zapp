import 'package:flutter/material.dart';

class ReadChatTile extends StatelessWidget {
  ReadChatTile({
    this.about,
    this.image,
    required this.name,
    required this.time,
    required this.isOnline,
    super.key,
  });

  String name;
  String? about;
  String time;
  String? image;
  bool isOnline;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
          Column(
            children: [
              Text(time),
              const SizedBox(
                height: 5,
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
