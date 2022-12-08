import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zapp/screens/clientScreens/client_screen_widget.dart';

class ClientScreen extends StatelessWidget {
  const ClientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        children: [
          Gap(20),
          const Text(
            'My Account',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Righteous',
                color: Color(0xFF432C81)),
          ),
          Gap(20),
          const Text('My Account'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Gap(20),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/my_pic.jpg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.edit,
                    size: 40,
                    color: Color(0xFF432C81),
                  ),
                ],
              ),
              const Gap(10),
              const Text(
                'Ibraheem Omowumi',
                style: TextStyle(
                    color: Color(0xFF432C81),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Raleway'),
              ),
              const Gap(5),
              const Text(
                'hibraheem160@gmail.com',
                style:
                    TextStyle(color: Color(0xFFA99Fc6), fontFamily: 'Raleway'),
              ),
              const Gap(30),
              Column(
                children: [
                  const Divider(thickness: 1),
                  ClientScreenWidget(icon: Icons.person, text: 'Account'),
                  const Divider(thickness: 1.0),
                  ClientScreenWidget(
                      icon: Icons.event_note_sharp, text: 'Medical Record'),
                  const Divider(thickness: 1),
                  ClientScreenWidget(
                      icon: Icons.notifications, text: 'Notification'),
                  const Divider(thickness: 1),
                  ClientScreenWidget(
                      icon: Icons.remove_red_eye, text: 'Appearance'),
                  const Divider(thickness: 1),
                  ClientScreenWidget(
                      icon: Icons.shield, text: 'Privacy and Security'),
                  const Divider(thickness: 1),
                  ClientScreenWidget(
                      icon: FontAwesomeIcons.speakerDeck, text: 'Sound'),
                  const Divider(thickness: 1),
                  ClientScreenWidget(icon: Icons.language, text: 'Language'),
                  const Divider(thickness: 1),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
