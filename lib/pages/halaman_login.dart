import 'package:aplikasiperhitungandankonversi2/main.dart';
import 'package:flutter/material.dart';

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({super.key});

  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Aplikasi Perhitungan Dan Konversi",
            style: TextStyle(fontSize: 12, color: Colors.black87),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Login",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w600)),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Form(
                          key: keyForm,
                          child: Column(children: [
                            // TEXT FIELD USERNAME
                            TextFormField(
                              style: const TextStyle(fontSize: 15),
                              controller: username,
                              validator: (value) =>
                                  (value == "") ? "Username belum diisi" : null,
                              autofocus: true,
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  hintText: "Masukkan Username",
                                  labelText: "Username",
                                  labelStyle: TextStyle(color: Colors.black87),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black87)),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black87))),
                            ),

                            const SizedBox(height: 15),

                            //  TEXT FIELD PASSWORD
                            TextFormField(
                              style: const TextStyle(fontSize: 15),
                              controller: password,
                              validator: (value) =>
                                  (value == "") ? "Password belum diisi" : null,
                              obscureText: true,
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  hintText: "Masukkan Password",
                                  labelText: "Password",
                                  labelStyle: TextStyle(color: Colors.black87),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black87)),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black87))),
                            ),
                          ])),
                    ),
                    const SizedBox(height: 20),

                    // TOMBOL MASUK
                    ElevatedButton(
                      onPressed: () {
                        if (keyForm.currentState!.validate()) {
                          // validasi form
                          if (username.text == "foura" &&
                              password.text == "foura") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HalamanUtama()));
                          } else {
                            // MyToast.showToast(fToast,
                            //     "Username atau Password salah!", Icons.close);
                          }
                        }
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(209, 81, 45, 1))),
                      child: const Text(
                        'Masuk',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ))));
  }
}
