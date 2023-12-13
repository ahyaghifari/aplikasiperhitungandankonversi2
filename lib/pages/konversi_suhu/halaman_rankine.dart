import 'package:aplikasiperhitungandankonversi2/component/my_appbar.dart';
import 'package:flutter/material.dart';

class HalamanRankine extends StatefulWidget {
  @override
  _HalamanRankineState createState() => _HalamanRankineState();
}

class _HalamanRankineState extends State<HalamanRankine> {
  TextEditingController _RankineController = TextEditingController();
  double _reamur = 0;
  double _fahrenheit = 0;
  double _kelvin = 0;
  double _celcius = 0;

  void _hitungSuhu() {
    double Rankine = double.parse(_RankineController.text);
    setState(() {
      _reamur = (4 / 5) * Rankine;
      _fahrenheit = (9 / 5 * Rankine) + 32;
      _kelvin = _reamur + 273.15;
      _celcius = _fahrenheit + 491.67;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar(Colors.blueGrey, "Konversi Suhu - Rankine"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _RankineController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Suhu Rankine'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _hitungSuhu,
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blueGrey)),
              child: Text('Hitung Suhu'),
            ),
            SizedBox(height: 16.0),
            Text('Reamur: $_reamur°R'),
            Text('Fahrenheit: $_fahrenheit°F'),
            Text('Kelvin: $_kelvin K'),
            Text('Celcius: $_celcius°C'),
          ],
        ),
      ),
    );
  }
}
