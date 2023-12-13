import 'package:aplikasiperhitungandankonversi2/component/my_appbar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HalamanHitungSatuanPanjang extends StatelessWidget {
  String contextHitung = "";

  HalamanHitungSatuanPanjang(this.contextHitung, {super.key});

  // deklarasi controller
  TextEditingController nilai = TextEditingController();
  TextEditingController cKm = TextEditingController();
  TextEditingController cHm = TextEditingController();
  TextEditingController cDam = TextEditingController();
  TextEditingController cM = TextEditingController();
  TextEditingController cDm = TextEditingController();
  TextEditingController cCm = TextEditingController();
  TextEditingController cMm = TextEditingController();

  // fungsi untuk menghitung dan menampikan nilai perhitungan
  void getHasil(double value) {
    String satuan = contextHitung.toLowerCase();

    if (satuan == "km") {
      cKm.text = value.toString();
      cHm.text = (value * 10).toString();
      cDam.text = (value * 100).toString();
      cM.text = (value * 1000).toString();
      cDm.text = (value * 10000).toString();
      cCm.text = (value * 100000).toString();
      cMm.text = (value * 1000000).toString();
    } else if (satuan == "hm") {
      cKm.text = (value / 10).toString();
      cHm.text = value.toString();
      cDam.text = (value * 10).toString();
      cM.text = (value * 100).toString();
      cDm.text = (value * 1000).toString();
      cCm.text = (value * 10000).toString();
      cMm.text = (value * 100000).toString();
    } else if (satuan == "dam") {
      cKm.text = (value / 100).toString();
      cHm.text = (value / 10).toString();
      cDam.text = value.toString();
      cM.text = (value * 10).toString();
      cDm.text = (value * 100).toString();
      cCm.text = (value * 1000).toString();
      cMm.text = (value * 10000).toString();
    } else if (satuan == "m") {
      cKm.text = (value / 1000).toString();
      cHm.text = (value / 100).toString();
      cDam.text = (value / 10).toString();
      cM.text = value.toString();
      cDm.text = (value * 10).toString();
      cCm.text = (value * 100).toString();
      cMm.text = (value * 1000).toString();
    } else if (satuan == "dm") {
      cKm.text = (value / 10000).toString();
      cHm.text = (value / 1000).toString();
      cDam.text = (value / 100).toString();
      cM.text = (value / 10).toString();
      cDm.text = value.toString();
      cCm.text = (value * 10).toString();
      cMm.text = (value * 100).toString();
    } else if (satuan == "cm") {
      cKm.text = (value / 100000).toString();
      cHm.text = (value / 10000).toString();
      cDam.text = (value / 1000).toString();
      cM.text = (value / 100).toString();
      cDm.text = (value / 10).toString();
      cCm.text = value.toString();
      cMm.text = (value * 10).toString();
    } else {
      cKm.text = (value / 1000000).toString();
      cHm.text = (value / 100000).toString();
      cDam.text = (value / 10000).toString();
      cM.text = (value / 1000).toString();
      cDm.text = (value / 100).toString();
      cCm.text = (value / 10).toString();
      cMm.text = value.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APP BAR
      appBar: MyAppBar.myAppBar(
          Colors.red, "Hitung Satuan Panjang : $contextHitung"),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TULISAN MASUKKAN NILAI
            Text("Masukkan nilai $contextHitung"),
            const SizedBox(height: 10),

            // TEXT FIELD UNTUK NILAI DARI PERHITUNGAN
            TextField(
              autofocus: true,
              style: const TextStyle(fontSize: 15),
              controller: nilai,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  hintText: "Masukkan Nilai",
                  labelText: "Nilai",
                  labelStyle: TextStyle(color: Colors.black87),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87))),
            ),
            const SizedBox(height: 10),

            // TOMBOL TOMBOL
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // TOMBOL HITUNG
                ElevatedButton(
                    onPressed: () {
                      double n = double.parse(nilai.text);
                      getHasil(n);
                    },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red)),
                    child: const Text("Hitung")),

                // TOMBOL CLEAR
                OutlinedButton(
                    onPressed: () {
                      nilai.clear();
                      cKm.clear();
                      cHm.clear();
                      cDam.clear();
                      cM.clear();
                      cDm.clear();
                      cCm.clear();
                      cMm.clear();
                    },
                    style: const ButtonStyle(
                        side: MaterialStatePropertyAll(
                            BorderSide(color: Colors.red))),
                    child: const Text(
                      "Clear",
                      style: TextStyle(color: Colors.red),
                    )),
              ],
            ),
            const SizedBox(height: 18),
            hasilPerhitungan(
                "Km (Kilometer)", "Nilai Km ", cKm), // text field km
            const SizedBox(height: 10),
            hasilPerhitungan(
                "Hm (Hektometer)", "Nilai Hm", cHm), // text field hm
            const SizedBox(height: 10),
            hasilPerhitungan(
                "Dam (Dekameter)", "Nilai Dam", cDam), // text field dam
            const SizedBox(height: 10),
            hasilPerhitungan("M (Meter)", "Nilai M", cM), // text field m
            const SizedBox(height: 10),
            hasilPerhitungan(
                "Dm (Desimeter)", "Nilai Dm", cDm), // text field dm
            const SizedBox(height: 10),
            hasilPerhitungan(
                "Cm (Centimeter)", "Nilai Cm", cCm), // text field cm
            const SizedBox(height: 10),
            hasilPerhitungan(
                "Mm (Milimeter)", "Nilai Mm", cMm), // text field mm
          ],
        ),
      ),
    );
  }

  //  TEXT FIELD TEXT FIELD HASIL PEHITUNGAN
  TextField hasilPerhitungan(
      String label, String hint, TextEditingController tec) {
    return TextField(
      style: const TextStyle(fontSize: 15),
      controller: tec,
      readOnly: true,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: hint,
          labelText: label,
          labelStyle: const TextStyle(color: Colors.red),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black87)),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black87))),
    );
  }
}
