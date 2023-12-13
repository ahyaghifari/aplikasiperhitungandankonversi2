import 'package:aplikasiperhitungandankonversi2/component/my_appbar.dart';
import 'package:flutter/material.dart';

class HalamanCelcius extends StatefulWidget {
  @override
  _HalamanCelciusState createState() => _HalamanCelciusState();
}

class _HalamanCelciusState extends State<HalamanCelcius> {
  TextEditingController _CelciusController = TextEditingController();
  double _reamur = 0;
  double _fahrenheit = 0;
  double _kelvin = 0;
  double _rankine = 0;

  void _hitungSuhu() {
    double Celcius = double.parse(_CelciusController.text);
    setState(() {
      _reamur = (4 / 5) * Celcius;
      _fahrenheit = (9 / 5 * Celcius) + 32;
      _kelvin = _reamur + 273.15;
      _rankine = _fahrenheit + 273.15;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar(Colors.blueGrey, "Konversi Suhu - Celcius"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _CelciusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Suhu Celcius'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _hitungSuhu,
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blueGrey)),
              child: Text('Hitung Suhu'),
            ),
            SizedBox(height: 16.0),
            Text('reamur: $_reamur°R'),
            Text('Fahrenheit: $_fahrenheit°F'),
            Text('Kelvin: $_kelvin K'),
            Text('Rankine: $_rankine °Ra'),
          ],
        ),
      ),
    );
  }
}
