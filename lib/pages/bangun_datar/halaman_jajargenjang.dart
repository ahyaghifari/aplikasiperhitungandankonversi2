import 'package:aplikasiperhitungandankonversi2/component/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

TextEditingController a = TextEditingController();
TextEditingController b = TextEditingController();
TextEditingController tinggi = TextEditingController();
TextEditingController luas = TextEditingController();
TextEditingController keliling = TextEditingController();

class HalamanJejarGenjang extends StatelessWidget {
  const HalamanJejarGenjang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar(Colors.blue, "Jejar Genjang"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: a,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.numbers),
                  labelText: "Masukan Alas",
                  hintText: "Masukan Alas Jejar Genjang "),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: b,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.numbers),
                  labelText: "Masukan Sisi Miring/b",
                  hintText: "Masukan Sisi Miring/b Jejar Genjang"),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: tinggi,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.numbers),
                  labelText: "Masukan Tinggi",
                  hintText: "Masukan Tinggi Jejar Gejang"),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (a.text == "" || b.text == "" || tinggi.text == "") {
                        Fluttertoast.showToast(
                            msg: "a b dan t belum diisi!",
                            backgroundColor: Colors.red,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 3, //lama muncul toast, 3 detik
                            webPosition:
                                "center", //posisi toast kalau dijalankan di browser webBgColor: 	webColor: "orange",//background utk dijalankan di browser
                            toastLength: Toast.LENGTH_LONG);
                      } else {
                        double hasilluas =
                            (double.parse(a.text) * double.parse(tinggi.text));
                        luas.text = hasilluas.toString();

                        double hasilkeliling = (2 * double.parse(a.text)) +
                            (2 * double.parse(b.text));
                        luas.text = hasilluas.toString();
                        keliling.text = hasilkeliling.toString();
                      }
                    },
                    child: Text("Hitung")),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    onPressed: () {
                      a.text = "0";
                      b.text = "0";
                      tinggi.text = "0";
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
                  labelText: "Hasil Perhitungan Luas Jejar Genjang"),
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
                  labelText: "Hasil Perhitungan Keliling Jejar Genjang"),
            )
          ],
        ),
      ),
    );
  }
}
