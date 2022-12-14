import 'package:flutter/material.dart';
import 'package:zapp/constant.dart';
import 'menu_card.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const ListTile(
              horizontalTitleGap: 5.0,
              contentPadding: EdgeInsets.fromLTRB(15, 20, 15, 5),
              leading: Icon(
                Icons.waving_hand,
                color: Colors.orangeAccent,
              ),
              title: Text(
                'Hi Peggy!',
                style: TextStyle(
                    color: deepPurple,
                    fontSize: menuTextSize,
                    fontFamily: menuFontFamily,
                    fontWeight: menuFontWeight),
              ),
              trailing: CircleAvatar(
                  child: Icon(
                Icons.face_outlined,
                size: 40.0,
              )),
            ),
            Flexible(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    MenuCard(
                      menuCardText: 'Your Diet Chart',
                      menuCardImage: AssetImage(
                          'assets/images/menu/Lifesavers Stomach.png'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    MenuCard(
                      menuCardText: 'Medical History',
                      menuCardImage: AssetImage(
                          'assets/images/menu/Lifesavers Electrocardiogram.png'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    MenuCard(
                      menuCardText: 'Lab Results',
                      menuCardImage: AssetImage(
                          'assets/images/menu/Lifesavers Serum Bag.png'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    MenuCard(
                      menuCardText: 'Online Chart',
                      menuCardImage:
                          AssetImage('assets/images/menu/Lifesavers Bust.png'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    MenuCard(
                      menuCardText: 'Finding a Doctor',
                      menuCardImage: AssetImage(
                          'assets/images/menu/Lifesavers Stethoscope.png'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
