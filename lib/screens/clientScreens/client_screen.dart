import 'package:flutter/material.dart';


class ClientScreen extends StatelessWidget {
  const ClientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Text('My Account'),
          Column(
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/my_pic'),
                  ),
                  SizedBox(height:10,),
                  Icon(
                    Icons.edit,
                    size: 20,
                    color: Color(0xFF432C81),
                  ),
                ],
              ),
             const SizedBox(height:10,),
             const Text('Scientist'),
             const SizedBox(height:10,),
             const Text('hibraheem160@gmail.com'),
            ],
          )
        ],
      ),
    );
  }
}
