import 'package:aplikasiperhitungandankonversi2/component/my_appbar.dart';
import 'package:aplikasiperhitungandankonversi2/pages/halaman_login.dart';
import 'package:aplikasiperhitungandankonversi2/pages/bangun_datar/halaman_bangundatar.dart';
import 'package:aplikasiperhitungandankonversi2/pages/satuan_panjang/halaman_satuan_panjang.dart';
import 'package:aplikasiperhitungandankonversi2/pages/konversi_suhu/halaman_konversi_suhu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AplikasiPerhitunganDanKonversi());
}

class AplikasiPerhitunganDanKonversi extends StatelessWidget {
  const AplikasiPerhitunganDanKonversi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Montserrat'),
        debugShowCheckedModeBanner: false,
        home: HalamanLogin());
  }
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  List daftarHalaman = [
    {
      "title": "Dashboard",
      "content": null,
      "color": const Color.fromRGBO(209, 81, 45, 1)
    },
    {
      "title": "Satuan Panjang",
      "content": const HalamanSatuanPanjang(),
      "color": Colors.red
    },
    {
      "title": "Bangun Datar",
      "content": const HalamanBangunDatar(),
      "color": Colors.blue
    },
    {
      "title": "Konversi Suhu",
      "content": HalamanKonversiSuhu(),
      "color": Colors.blueGrey
    },
  ];

  int halamanTerpilih = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar(daftarHalaman[halamanTerpilih]["color"],
          daftarHalaman[halamanTerpilih]["title"]),
      drawer: Drawer(
        width: 250,
        elevation: 0,
        child: ListView(
          children: [
            ListTile(
              title: const Text(
                'Dashboard',
              ),
              trailing: const Icon(Icons.arrow_right),
              leading: const Icon(Icons.dashboard),
              onTap: () {
                setState(() {
                  halamanTerpilih = 0;
                });
                Navigator.pop(context);
              },
              iconColor: const Color.fromRGBO(65, 21, 48, 1),
              textColor: const Color.fromRGBO(65, 21, 48, 1),
            ),
            ListTile(
              title: const Text(
                'Satuan Panjang',
              ),
              trailing: const Icon(Icons.arrow_right),
              leading: const Icon(Icons.straighten),
              onTap: () {
                setState(() {
                  halamanTerpilih = 1;
                });
                Navigator.pop(context);
              },
              iconColor: const Color.fromRGBO(65, 21, 48, 1),
              textColor: const Color.fromRGBO(65, 21, 48, 1),
            ),
            ListTile(
              title: const Text(
                'Bangun Datar',
              ),
              trailing: const Icon(Icons.arrow_right),
              leading: const Icon(Icons.square_outlined),
              onTap: () {
                setState(() {
                  halamanTerpilih = 2;
                });
                Navigator.pop(context);
              },
              iconColor: const Color.fromRGBO(65, 21, 48, 1),
              textColor: const Color.fromRGBO(65, 21, 48, 1),
            ),
            ListTile(
              title: const Text(
                'Konversi Suhu',
              ),
              trailing: const Icon(Icons.arrow_right),
              leading: const Icon(Icons.ac_unit),
              onTap: () {
                setState(() {
                  halamanTerpilih = 3;
                });
                Navigator.pop(context);
              },
              iconColor: const Color.fromRGBO(65, 21, 48, 1),
              textColor: const Color.fromRGBO(65, 21, 48, 1),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'Keluar',
              ),
              trailing: const Icon(Icons.arrow_right),
              leading: const Icon(Icons.logout),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HalamanLogin()));
              },
            ),
          ],
        ),
      ),
      body: Center(
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: (halamanTerpilih == 0)
                  ? halamanDashboard()
                  : daftarHalaman[halamanTerpilih]["content"])),
    );
  }

  Widget halamanDashboard() {
    return Column(
      children: [
        const SizedBox(height: 10),
        const Text("Aplikasi Perhitungan dan Konversi",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(65, 21, 48, 1))),
        const SizedBox(height: 10),
        const Text("Kelompok FourA"),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            pilihanMenu("Satuan Panjang", "satuan-panjang", Icons.straighten,
                Colors.red, context),
            const SizedBox(width: 50),
            pilihanMenu("Bangun Datar", "bangun-datar", Icons.square,
                Colors.blue, context),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            pilihanMenu("Konversi Suhu", "konversi-suhu", Icons.ac_unit,
                Colors.blueGrey, context),
          ],
        )
      ],
    );
  }

  GestureDetector pilihanMenu(String content, String context, IconData icon,
      Color color, BuildContext bContext) {
    return GestureDetector(
        onTap: () {
          if (context == "satuan-panjang") {
            setState(() {
              halamanTerpilih = 1;
            });
          } else if (context == "bangun-datar") {
            setState(() {
              halamanTerpilih = 2;
            });
          } else if (context == "konversi-suhu") {
            setState(() {
              halamanTerpilih = 3;
            });
          } else {
            setState(() {
              halamanTerpilih = 0;
            });
          }
        },
        child: Container(
          height: 150,
          width: 150,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(6))),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                icon,
                size: 95,
                color: Colors.white.withOpacity(0.2),
              ),
              Text(content,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20, color: Colors.white))
            ],
          ),
        ));
  }
}
