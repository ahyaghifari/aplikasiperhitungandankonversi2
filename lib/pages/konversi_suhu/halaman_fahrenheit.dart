import 'package:aplikasiperhitungandankonversi2/component/my_appbar.dart';
import 'package:flutter/material.dart';

class HalamanFahrenheit extends StatefulWidget {
  @override
  _HalamanFahrenheitState createState() => _HalamanFahrenheitState();
}

class _HalamanFahrenheitState extends State<HalamanFahrenheit> {
  TextEditingController _FahrenheitController = TextEditingController();
  double _reamur = 0;
  double _rankine = 0;
  double _kelvin = 0;
  double _celcius = 0;

  void _hitungSuhu() {
    double Fahrenheit = double.parse(_FahrenheitController.text);
    setState(() {
      _celcius = (5 / 9) * Fahrenheit;
      _rankine = (9 / 5 * Fahrenheit) + 32;
      _kelvin = Fahrenheit + 459.67;
      _rankine = _reamur + 459.67;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar(Colors.blueGrey, "Konversi Suhu - Fahrenheit"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _FahrenheitController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Suhu Fahrenheit'),
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
            Text('Kelvin: $_kelvin K'),
            Text('Celcius: $_celcius°C'),
          ],
        ),
      ),
    );
  }
}
