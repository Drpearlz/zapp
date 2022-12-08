import 'package:flutter/material.dart';
import 'package:zapp/screens/clientScreens/client_screen.dart';
import 'package:zapp/screens/intro/onboarding.dart';
import 'package:zapp/screens/intro/welcome_screen.dart';
import 'package:zapp/screens/login/login_screen.dart';
import 'package:zapp/screens/sign_up/sign_up.dart';
import 'package:zapp/utils/styles.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = [
      const SignUpScreen(),
      const LoginScreen(),
      const OnboardingPage(),
      const WelcomeScreen(),
      const ClientScreen(),
    ];
    void _onItemTapped(int index) {
      setState(() {
        _selectedindex = index;
      });
    }

    return Scaffold(
      backgroundColor: const Color(0xFF7B6CA8),
      body: Center(
        child: _widgetOptions[_selectedindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedindex,
        onTap: _onItemTapped,
        elevation: 10,
        selectedItemColor: const Color(0xFF7B6CA8),
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: ButtomBarIcons.homeIcon,
            label: '',
          ),
          BottomNavigationBarItem(icon: ButtomBarIcons.messageIcon, label: ''),
          BottomNavigationBarItem(
              icon: ButtomBarIcons.stethoscopeIcon, label: ''),
          BottomNavigationBarItem(icon: ButtomBarIcons.recordIcon, label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
