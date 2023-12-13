import 'package:aplikasiperhitungandankonversi2/component/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HalamanSegitigaSamaKaki extends StatelessWidget {
  HalamanSegitigaSamaKaki({super.key});

  TextEditingController alas = TextEditingController();
  TextEditingController tinggi = TextEditingController();
  TextEditingController sisi = TextEditingController();
  TextEditingController hasil1 = TextEditingController();
  TextEditingController hasil2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar(Colors.blue, "Segitiga Sama Kaki"),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: alas,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.square_foot),
                labelText: "Masukkan Alas Segitiga Sama Kaki",
                hintText: "Masukkan Alas Segita Sama Kaki",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: tinggi,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.square_foot),
                labelText: "Masukkan Tinggi Segitiga Sama Kaki",
                hintText: "Masukkan Tinggi Segitiga Sama Kaki",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: sisi,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.square_foot),
                labelText: "Masukkan Sisi Segitiga Sama Kaki",
                hintText: "Masukkan Sisi Segitiga Sama Kaki",
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (alas.text == "" ||
                        tinggi.text == "" ||
                        sisi.text == "") {
                      Fluttertoast.showToast(
                          msg: "Alas Tinggi dan Sisi Belum diisi",
                          backgroundColor: Colors.amber,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 3,
                          webPosition: "center",
                          webBgColor: "orange",
                          toastLength: Toast.LENGTH_LONG);
                    } else {
                      double alassk = double.parse(alas.text);
                      double tinggisk = double.parse(tinggi.text);
                      double sisisk = double.parse(sisi.text);
                      double hasilLuas = 0.5 * alassk * tinggisk;
                      double hasilKeliling = alassk * sisisk * sisisk;
                      hasil1.text = hasilLuas.toString();
                      hasil2.text = hasilKeliling.toString();
                    }
                  },
                  child: Text("Hitung"),
                ),
                const SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    alas.text = "";
                    tinggi.text = "";
                    sisi.text = "";
                    hasil1.text = "";
                    hasil2.text = "";
                  },
                  child: const Text("Clear"),
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextField(
              controller: hasil1,
              enabled: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.calculate),
                labelText: "Hasil Perhitungan Luas",
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: hasil2,
              enabled: false,
              decoration: const InputDecoration(
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
}
