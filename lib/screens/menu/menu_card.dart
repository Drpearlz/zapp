import 'package:flutter/material.dart';
import 'package:zapp/constant.dart';

class MenuCard extends StatelessWidget {
   const MenuCard({super.key, required this.menuCardText, required this.menuCardImage, required this.menuCardNavigation});

  final String menuCardText;
  final AssetImage menuCardImage;

  final Function menuCardNavigation;

  final Future menuCardNavigation;>>>>>>> dev

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        menuCardNavigation;
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        color: Colors.white60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Your Diet Chart',
              style: TextStyle(
                  color: deepPurple,
                  fontSize: 20.0,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              child:  Image(
                 image: menuCardImage),
            )
          ],
        ),
      ),
    );
  }
}
