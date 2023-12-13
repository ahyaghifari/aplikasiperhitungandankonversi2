import 'package:aplikasiperhitungandankonversi2/component/my_appbar.dart';
import 'package:flutter/material.dart';

class HalamanReamur extends StatefulWidget {
  @override
  _HalamanReamurState createState() => _HalamanReamurState();
}

class _HalamanReamurState extends State<HalamanReamur> {
  TextEditingController _reamurController = TextEditingController();
  double _celcius = 0;
  double _fahrenheit = 0;
  double _kelvin = 0;
  double _rankine = 0;

  void _hitungSuhu() {
    double reamur = double.parse(_reamurController.text);
    setState(() {
      _celcius = 1.25 * reamur;
      _fahrenheit = (9 / 4 * reamur) + 32;
      _kelvin = _celcius + 273.15;
      _rankine = _fahrenheit + 459.67;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar(Colors.blueGrey, "Konversi Suhu - Reamur"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _reamurController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Suhu Reamur'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _hitungSuhu,
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blueGrey)),
              child: Text('Hitung Suhu'),
            ),
            SizedBox(height: 16.0),
            Text('Celcius: $_celcius°C'),
            Text('Fahrenheit: $_fahrenheit°F'),
            Text('Kelvin: $_kelvin K'),
            Text('Rankine: $_rankine °Ra'),
          ],
        ),
      ),
    );
  }
}
