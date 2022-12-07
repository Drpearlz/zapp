import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClientScreen extends StatelessWidget {
  const ClientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text('My Account'),
          Column(
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/my_pic'),
                  ),
                  Gap(10),
                  Icon(
                    Icons.edit,
                    size: 20,
                    color: Color(0xFF432C81),
                  ),
                ],
              ),
              Gap(10),
              Text('Scientist'),
              Gap(10),
              Text('hibraheem160@gmail.com'),
            ],
          )
        ],
      ),
    );
  }
}
