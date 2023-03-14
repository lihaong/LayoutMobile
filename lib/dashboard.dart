import 'package:flutter/material.dart';
import 'package:mobile_1/profile.dart';
import 'segitiga.dart';
import 'layang.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz 1',
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/profile.png",
                    width: 70,
                  ),
                  SizedBox(height: 10),
                  Text('Profile'),
                ],
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Segitiga()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/segitiga.png',
                    width: 70,
                  ),
                  SizedBox(height: 10),
                  Text('Segitiga Siku-siku'),
                ],
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Layang()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/layang.png',
                    width: 70,
                  ),
                  SizedBox(height: 10),
                  Text('Layang-layang'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
