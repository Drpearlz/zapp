import 'package:flutter/material.dart';
import 'package:zapp/constant.dart';

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
              leading: Icon(Icons.waving_hand, color: Colors.orangeAccent,),
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
                  children: [
                    Card(
                      shape: cardShape,
                      color: cardColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Your Diet Chart',
                            style: TextStyle(
                                color: deepPurple,
                                fontSize: menuTextSize,
                                fontFamily: menuFontFamily,
                                fontWeight: menuFontWeight),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            child: const Image(
                                image: AssetImage(
                                    'assets/images/menu/Lifesavers Stomach.png')),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Card(
                      shape: cardShape,
                      color: cardColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Medical History',
                            style: TextStyle(
                                color: deepPurple,
                                fontSize: menuTextSize,
                                fontFamily: menuFontFamily,
                                fontWeight: menuFontWeight),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            child: const Image(
                                image: AssetImage(
                                    'assets/images/menu/Lifesavers Electrocardiogram.png')),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Card(
                      shape: cardShape,
                      color: cardColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Lab Results',
                            style: TextStyle(
                                color: deepPurple,
                                fontSize: menuTextSize,
                                fontFamily: menuFontFamily,
                                fontWeight: menuFontWeight),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            child: const Image(
                                image: AssetImage(
                                    'assets/images/menu/Lifesavers Serum Bag.png')),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Card(
                      shape: cardShape,
                      color: cardColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Online Chart',
                            style: TextStyle(
                                color: deepPurple,
                                fontSize: menuTextSize,
                                fontFamily: menuFontFamily,
                                fontWeight: menuFontWeight),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            child: const Image(
                                image: AssetImage(
                                    'assets/images/menu/Lifesavers Bust.png')),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Card(
                      shape: cardShape,
                      color: cardColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Finding a Doctor',
                            style: TextStyle(
                                color: deepPurple,
                                fontSize: menuTextSize,
                                fontFamily: menuFontFamily,
                                fontWeight: menuFontWeight),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            child: const Image(
                                image: AssetImage(
                                    'assets/images/menu/Lifesavers Stethoscope.png')),
                          )
                        ],
                      ),
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
