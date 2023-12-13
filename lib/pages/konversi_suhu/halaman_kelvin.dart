import 'package:aplikasiperhitungandankonversi2/component/my_appbar.dart';
import 'package:flutter/material.dart';

class HalamanKelvin extends StatefulWidget {
  @override
  _HalamanKelvinState createState() => _HalamanKelvinState();
}

class _HalamanKelvinState extends State<HalamanKelvin> {
  TextEditingController _KelvinController = TextEditingController();
  double _reamur = 0;
  double _rankine = 0;
  double _fahrenheit = 0;
  double _celcius = 0;

  void _hitungSuhu() {
    double Kelvin = double.parse(_KelvinController.text);
    setState(() {
      _celcius = 273.15 * Kelvin;
      _reamur = (4 / 5 * Kelvin) - 273;
      _fahrenheit = Kelvin + 459.67;
      _rankine = (9 / 5) * Kelvin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar(Colors.blueGrey, "Konversi Suhu - Kelvin"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _KelvinController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Suhu Kelvin '),
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
            Text('Rankine: $_rankine °Ra'),
            Text('Fahrenheit: $_fahrenheit R'),
            Text('Celcius: $_celcius°C'),
          ],
        ),
      ),
    );
  }
}
