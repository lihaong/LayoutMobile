import 'package:flutter/material.dart';
import 'dart:math';

class Segitiga extends StatefulWidget {
  @override
  KalkulatorSegitigaState createState() => KalkulatorSegitigaState();
}

class KalkulatorSegitigaState extends State<Segitiga> {
  final alasController = TextEditingController();
  final tinggiController = TextEditingController();

  double luas = 0.0;
  double keliling = 0.0;

  void hitung() {
    final alas = double.parse(alasController.text);
    final tinggi = double.parse(tinggiController.text);

    setState(() {
      luas = 0.5 * alas * tinggi;
      keliling = alas + tinggi + sqrt(pow(alas, 2) + pow(tinggi, 2));
    });
  }

  @override
  void dispose() {
    alasController.dispose();
    tinggiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Segitiga Siku-Siku'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: alasController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Alas',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: tinggiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Tinggi',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: hitung,
              child: Text('Hitung'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 20),
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 12, horizontal: 50),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Luas',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '${luas.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Keliling',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '${keliling.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
