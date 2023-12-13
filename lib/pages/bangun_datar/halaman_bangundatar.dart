import 'package:flutter/material.dart';
import 'package:aplikasiperhitungandankonversi2/pages/bangun_datar/halaman_jajargenjang.dart';
import 'package:aplikasiperhitungandankonversi2/pages/bangun_datar/halaman_lingkaran.dart';
import 'package:aplikasiperhitungandankonversi2/pages/bangun_datar/halaman_persegi.dart';
import 'package:aplikasiperhitungandankonversi2/pages/bangun_datar/halaman_persegipanjang.dart';
import 'package:aplikasiperhitungandankonversi2/pages/bangun_datar/halaman_segitigasamakaki.dart';

class HalamanBangunDatar extends StatefulWidget {
  const HalamanBangunDatar({super.key});

  @override
  State<HalamanBangunDatar> createState() => _HalamanBangunDatarState();
}

class _HalamanBangunDatarState extends State<HalamanBangunDatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text('Pilih Bangun Datar',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HalamanPersegi()));
                    },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Persegi', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    )),
                SizedBox(width: 50),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const HalamanPersegiPanjang()));
                    },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Persegi Panjang',
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HalamanJejarGenjang()));
                  },
                  child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Jejar', style: TextStyle(fontSize: 16)),
                          Text('Genjang', style: TextStyle(fontSize: 16)),
                        ],
                      )),
                ),
                SizedBox(width: 50),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HalamanLingkaran()));
                    },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Lingkaran', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HalamanSegitigaSamaKaki()));
                    },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Segitiga', style: TextStyle(fontSize: 16)),
                          Text('Sama Kaki', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
