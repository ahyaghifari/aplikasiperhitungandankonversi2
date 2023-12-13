import 'package:aplikasiperhitungandankonversi2/component/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

TextEditingController panjang = TextEditingController();
TextEditingController lebar = TextEditingController();
TextEditingController luas = TextEditingController();
TextEditingController keliling = TextEditingController();

class HalamanPersegiPanjang extends StatelessWidget {
  const HalamanPersegiPanjang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar(Colors.blue, "Persegi Panjang"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: panjang,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.numbers),
                  labelText: "Masukan Panjang",
                  hintText: "Masukan Panjang Persegi Panjang"),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: lebar,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.numbers),
                  labelText: "Masukan Lebar",
                  hintText: "Masukan Lebar Persegi Panjang"),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (panjang.text == "" || lebar.text == "") {
                        Fluttertoast.showToast(
                            msg:
                                "Lebar dan Panjang Persegi panjang belum diisi!",
                            backgroundColor: Colors.red,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 3, //lama muncul toast, 3 detik
                            webPosition:
                                "center", //posisi toast kalau dijalankan di browser webBgColor: 	webColor: "orange",//background utk dijalankan di browser
                            toastLength: Toast.LENGTH_LONG);
                      } else {
                        double hasilluas = 2 *
                            (double.parse(panjang.text) +
                                double.parse(lebar.text));
                        luas.text = hasilluas.toString();

                        double hasilkeliling = double.parse(panjang.text) *
                            double.parse(lebar.text);
                        keliling.text = hasilkeliling.toString();
                      }
                    },
                    child: Text("Hitung")),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    onPressed: () {
                      panjang.text = "0";
                      lebar.text = "0";
                      luas.text = "0";
                      keliling.text = "0";
                    },
                    child: Text("Clear")),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: luas,
              enabled: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.numbers),
                  labelText: "Hasil Perhitungan Luas Persegi Panjang"),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: keliling,
              enabled: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.numbers),
                  labelText: "Hasil Perhitungan Keliling Persegi panjang"),
            )
          ],
        ),
      ),
    );
  }
}
