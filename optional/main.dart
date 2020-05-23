import 'package:flutter/material.dart';
// add
import 'dart:convert';
import 'dart:math';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import './transaksi.dart';


void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  _buatPembayaran() {

    var server_key = "MASUKKAN SERVER KEY"; // server key yg sudah di enkripsi dengan method base26
    var url = "https://app.sandbox.midtrans.com/snap/v1/transactions"; // untuk url get api response

    // membuat nomor random
    var rng = Random();
    var order_id = rng.nextInt(100);
    
    Transaksi transaksi = Transaksi(order_id.toString(), 30000000); // untuk data transaksi

    String data = jsonEncode(transaksi); // untuk parsing data ke json

    http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': server_key,
      },
      body: data
      ).then((response) {
        if (response.statusCode == 201) {
          var tampilkan = json.decode(response.body);
          
          String urlTransaksi = tampilkan['redirect_url']; // untuk ambil url redirect
          
          launch(urlTransaksi); // untuk buka browser

        } else {
          throw Exception('Maaf Anda gagal melakukan transaki!');
        }
    });  
  }
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Contoh penggunaan plugin'),
        ),
        body: new Center(
          child: RaisedButton(
                  child: Text("Buat Pembayaran"),
                  onPressed: () => _buatPembayaran(),
                ),
        ),
      ),
    );
  }
}