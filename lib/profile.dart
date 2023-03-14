import 'dart:ui';
import 'package:flutter/material.dart';
import 'dashboard.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/images/FAJAR-3.png"),
              height: 250,
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                height: 130,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.lightBlueAccent,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const <Widget>[
                      SizedBox(height: 8),
                      Text(
                        'Muhammad Fajar Andikha',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '123200054',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Kelas : IF - A',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Hobi : Party',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _loginButton(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    width: MediaQuery.of(context).size.width,
    child: ElevatedButton(
      onPressed: () {
        Route route = MaterialPageRoute(builder: (context) => Dashboard());
        Navigator.push(context, route);
      },
      child: const Text('Login'),
    ),
  );
}
