import 'package:flutter/material.dart';
import 'package:zapp/screens/booking/booking_screen.dart';
import 'package:zapp/screens/clientScreens/client_screen.dart';
import 'package:zapp/screens/intro/welcome_screen.dart';
import 'package:zapp/screens/login/login_screen.dart';
import 'package:zapp/screens/sign_up/sign_up.dart';
import 'package:zapp/screens/specialities/specialities_screen.dart';
import 'package:zapp/splash.dart';
import 'package:zapp/utils/health_logo.dart';
import 'package:zapp/utils/styles.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late PersistentTabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = [
      const SignUpScreen(),
      const HealthLogo(),
      //const LoginScreen(),
      SpecialitiesScreen(),
      const BookingScreen(),
      const ClientScreen(),
    ];
    void _onItemTapped(int index) {
      setState(() {
        _selectedindex = index;
      });
    }

    return Scaffold(
      // backgroundColor: const Color(0xFF7B6CA8),
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
        items: bottomNavItems,
      ),
    );
  }

  List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      icon: ButtomBarIcons.homeIcon,
      label: '',
    ),
    BottomNavigationBarItem(icon: ButtomBarIcons.messageIcon, label: ''),
    BottomNavigationBarItem(icon: ButtomBarIcons.stethoscopeIcon, label: ''),
    BottomNavigationBarItem(icon: ButtomBarIcons.recordIcon, label: ''),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
  ];
}

/* body: PersistentTabView(
        context,
        controller: _controller,
        navBarStyle: NavBarStyle.style3,
        screens: [
          const SignUpScreen(),
          const LoginScreen(),
          SpecialitiesScreen(),
          const WelcomeScreen(),
          const ClientScreen(),
          // _widgetOptions[_selectedindex],
        ],
        items: persistentNavItems,
      ),*/

/*List<PersistentBottomNavBarItem> persistentNavItems = [
    PersistentBottomNavBarItem(
      icon: ButtomBarIcons.homeIcon,
      title: '',
    ),
    PersistentBottomNavBarItem(icon: ButtomBarIcons.messageIcon, title: ''),
    PersistentBottomNavBarItem(icon: ButtomBarIcons.stethoscopeIcon, title: ''),
    PersistentBottomNavBarItem(icon: ButtomBarIcons.recordIcon, title: ''),
    PersistentBottomNavBarItem(icon: const Icon(Icons.person), title: ''),
  ];
}*/
