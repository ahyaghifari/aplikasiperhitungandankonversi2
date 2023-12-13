import 'package:aplikasiperhitungandankonversi2/pages/satuan_panjang/halaman_hitung_satuan_panjang.dart';
import 'package:flutter/material.dart';

class HalamanSatuanPanjang extends StatelessWidget {
  const HalamanSatuanPanjang({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Pilih Satuan Panjang",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                pilihanSatuanPanjang(context, "Km"),
                const SizedBox(width: 40),
                pilihanSatuanPanjang(context, "Hm")
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                pilihanSatuanPanjang(context, "Dam"),
                const SizedBox(width: 40),
                pilihanSatuanPanjang(context, "M")
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                pilihanSatuanPanjang(context, "Dm"),
                const SizedBox(width: 40),
                pilihanSatuanPanjang(context, "Cm")
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                pilihanSatuanPanjang(context, "Mm"),
              ],
            ),
          ],
        )
      ],
    );
  }

  GestureDetector pilihanSatuanPanjang(BuildContext context, String konversi) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HalamanHitungSatuanPanjang(konversi)));
      },
      child: Container(
        height: 100,
        width: 100,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(6))),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("dari"),
                Text(konversi,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.red))
              ],
            )
          ],
        ),
      ),
    );
  }
}
