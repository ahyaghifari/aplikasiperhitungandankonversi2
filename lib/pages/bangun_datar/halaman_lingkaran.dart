import 'package:aplikasiperhitungandankonversi2/component/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:math';

TextEditingController jarijari = TextEditingController();
TextEditingController hasil1 = TextEditingController();
TextEditingController hasil2 = TextEditingController();

class HalamanLingkaran extends StatelessWidget {
  const HalamanLingkaran({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar(Colors.blue, "Lingkaran"),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: jarijari,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.circle),
                labelText: "Masukkan Jari-Jari Lingkaran",
                hintText: "Masukkan Jari-Jari Lingkaran",
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (jarijari.text == "") {
                      Fluttertoast.showToast(
                          msg: "Jari Jari Belum diisi",
                          backgroundColor: Colors.amber,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 3,
                          webPosition: "center",
                          webBgColor: "orange",
                          toastLength: Toast.LENGTH_LONG);
                    } else {
                      double hitungjariJari = double.parse(jarijari.text);
                      hitungLuasDanKeliling(hitungjariJari);
                    }
                  },
                  child: Text("Hitung"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    jarijari.text = "";
                    hasil1.text = "";
                    hasil2.text = "";
                  },
                  child: Text("Clear"),
                ),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              controller: hasil1,
              enabled: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.calculate),
                labelText: "Hasil Perhitungan Luas/Jari-jari",
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: hasil2,
              enabled: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.calculate),
                labelText: "Hasil Perhitungan Keliling",
              ),
            ),
          ],
        ),
      ),
    );
  }

  void hitungLuasDanKeliling(double jariJari) {
    double hasilLuas = pi * pow(jariJari, 2);
    double hasilKeliling = 2 * pi * jariJari;

    hasil1.text = hasilLuas.toString();
    hasil2.text = hasilKeliling.toString();
  }
}
