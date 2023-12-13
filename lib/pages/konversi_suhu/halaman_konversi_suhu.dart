import 'package:flutter/material.dart';
import 'package:aplikasiperhitungandankonversi2/pages/konversi_suhu/halaman_celcius.dart';
import 'package:aplikasiperhitungandankonversi2/pages/konversi_suhu/halaman_fahrenheit.dart';
import 'package:aplikasiperhitungandankonversi2/pages/konversi_suhu/halaman_kelvin.dart';
import 'package:aplikasiperhitungandankonversi2/pages/konversi_suhu/halaman_rankine.dart';
import 'package:aplikasiperhitungandankonversi2/pages/konversi_suhu/halaman_reamur.dart';

class HalamanKonversiSuhu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Pilih Satuan Suhu',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HalamanReamur()));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blueGrey)),
              child: Text(
                'Reamur',
                style: TextStyle(fontSize: 23),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HalamanCelcius()));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blueGrey)),
              child: Text('Celcius', style: TextStyle(fontSize: 23)),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HalamanFahrenheit()));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blueGrey)),
              child: Text('Fahrenheit', style: TextStyle(fontSize: 23)),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HalamanKelvin()));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blueGrey)),
              child: Text('Kelvin', style: TextStyle(fontSize: 23)),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HalamanRankine()));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blueGrey)),
              child: Text('Rankine', style: TextStyle(fontSize: 23)),
            ),
          ],
        ),
      ),
    );
  }
}
