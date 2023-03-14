import 'dart:math';
import 'package:flutter/material.dart';

class Layang extends StatefulWidget {
  @override
  KalkulatorLayangState createState() => KalkulatorLayangState();
}

class KalkulatorLayangState extends State<Layang> {
  bool hitungLuas = true;
  double diagonal1 = 0.0;
  double diagonal2 = 0.0;
  double sisipendek = 0.0;
  double sisipanjang = 0.0;
  double luas = 0.0;
  double keliling = 0.0;

  void hitung() {
    setState(() {
      if (hitungLuas) {
        luas = 0.5 * diagonal1 * diagonal2;
      } else {
        keliling = 2 * (sisipendek + sisipanjang);
      }
    });
  }

  void gantiMode() {
    setState(() {
      hitungLuas = !hitungLuas;
      luas = 0.0;
      keliling = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kite Calculator'),
      ),
      body: Padding(  
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Masukkan Diagonal 1'),
              onChanged: (value) {
                setState(() {
                  diagonal1 = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Masukkan Diagonal 2'),
              onChanged: (value) {
                setState(() {
                  diagonal2 = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Masukkan Sisi Pendek'),
              onChanged: (value) {
                setState(() {
                  sisipendek = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Masukkan Sisi Panjang'),
              onChanged: (value) {
                setState(() {
                  sisipanjang = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            SizedBox(height: 20.0),
            Text("Mode Perhitungan"),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child: Text('Luas'),
                  onPressed: () {
                    setState(() {
                      hitungLuas = true;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: hitungLuas ? Colors.green : null,
                  ),
                ),
                ElevatedButton(
                  child: Text('Keliling'),
                  onPressed: () {
                    setState(() {
                      hitungLuas = false;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: !hitungLuas ? Colors.green : null,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text("Hasil Perhitungan"),
            SizedBox(height: 20.0),
            Text(
              hitungLuas ? 'Luas: $luas' : 'Keliling: $keliling',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              child: Text('Hitung'),
              onPressed: hitung,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.swap_horiz),
        onPressed: gantiMode,
      ),
    );
  }
}
