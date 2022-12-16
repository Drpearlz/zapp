import 'package:flutter/material.dart';

void main() {
  runApp(const EmptyStateLabResult());
}

class EmptyStateLabResult extends StatelessWidget {
  const EmptyStateLabResult({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Raleway',
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading:  IconButton(
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 100, bottom: 6),
                  height: 281,
                  width: 375,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/unsplashwoman.png',
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    'Opps! Nothing to see here',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple
                    ),
                  ),
                ),
                const Text(
                  'Tap the screen to try again',
                  style: TextStyle(fontSize: 17.641,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w300),
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
