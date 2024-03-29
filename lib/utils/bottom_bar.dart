import 'package:flutter/material.dart';
import 'package:zapp/screens/booking/booking_screens/booking_screen1.dart';
import 'package:zapp/screens/booking/booking_screen.dart';
import 'package:zapp/screens/clientScreens/client_screen.dart';
import 'package:zapp/screens/finder/finder_screen.dart';
import 'package:zapp/screens/intro/welcome_screen.dart';
import 'package:zapp/screens/login/login_screen.dart';
import 'package:zapp/screens/sign_up/sign_up_1.dart';
import 'package:zapp/screens/specialities/specialities_screen.dart';
import 'package:zapp/utils/health_logo.dart';
import 'package:zapp/utils/styles.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../screens/chat/chat_screen.dart';
import 'custom_bottom_nav.dart';

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
    List<BottomIndicatorNavigationBarItem> bottomNavItems = [
      BottomIndicatorNavigationBarItem(
        icon: ButtomBarIcons.homeIcon.icon!,
      ),
      BottomIndicatorNavigationBarItem(
        icon: ButtomBarIcons.messageIcon.icon!,
      ),
      BottomIndicatorNavigationBarItem(
        icon: ButtomBarIcons.stethoscopeIcon.icon!,
      ),
      BottomIndicatorNavigationBarItem(
        icon: ButtomBarIcons.recordIcon.icon!,
      ),
      BottomIndicatorNavigationBarItem(
        icon: Icons.person,
      ),
    ];
    final List<Widget> widgetOptions = [
      SpecialitiesScreen(),
      const ChatScreen(),
      const FinderScreen(),
      // const Map_Screen(),
      // const HealthLogo(),
      const BookingScreen(),
      const ClientScreen(),
    ];

    return Scaffold(
      // backgroundColor: const Color(0xFF7B6CA8),
      body: widgetOptions[_selectedindex],
      bottomNavigationBar: BottomIndicatorBar(
        currentIndex: _selectedindex,
        onTap: (index) {
          setState(() {
            _selectedindex = index;
          });
        },
        items: bottomNavItems,
        activeColor: const Color(0xFF7B6CA8),
        inactiveColor: const Color(0xFF222B45),
        indicatorColor: const Color(0xFF7B6CA8),
      ),
    );
  }
}
/* body: Center(
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
    );*/
