import 'package:aplikasiperhitungandankonversi2/component/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

TextEditingController sisiController = TextEditingController();
TextEditingController hasil1 = TextEditingController();
TextEditingController hasil2 = TextEditingController();

class HalamanPersegi extends StatelessWidget {
  const HalamanPersegi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar(Colors.blue, "Persegi"),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: sisiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.square_foot),
                labelText: "Masukkan Panjang Sisi Persegi",
                hintText: "Masukkan Panjang Sisi Persegi",
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (sisiController.text == "") {
                      Fluttertoast.showToast(
                          msg: "Panjang Sisi Persegi Belum diisi",
                          backgroundColor: Colors.amber,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 3,
                          webPosition: "center",
                          webBgColor: "orange",
                          toastLength: Toast.LENGTH_LONG);
                    } else {
                      double sisi = double.parse(sisiController.text);
                      hitungLuasDanKeliling(sisi);
                    }
                  },
                  child: Text("Hitung"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    sisiController.text = "";
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
                labelText: "Hasil Perhitungan Luas",
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

  void hitungLuasDanKeliling(double sisi) {
    double hasilLuas = sisi * sisi;
    double hasilKeliling = 4 * sisi;

    hasil1.text = hasilLuas.toString();
    hasil2.text = hasilKeliling.toString();
  }
}
