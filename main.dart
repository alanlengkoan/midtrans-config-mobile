import 'package:flutter/material.dart';
import 'package:flutrans/flutrans.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isMakePayment = false;
  final flutrans = Flutrans();
  @override
  void initState() {
    super.initState();
    flutrans.init("MASUKKAN_CLIENT_KEY", "MASUKKAN_BASE_URL");
    flutrans.setFinishCallback(_callback);
  }

  _makePayment() {
    setState(() {
      isMakePayment = true;
    });
    flutrans
        .makePayment(
          MidtransTransaction(
              20000000,
              MidtransCustomer(
                  "Alan", "Lengkoan", "alanlengkoan15@gmail.com", "085242907595"),
              [
                MidtransItem(
                  "201",
                  10000000,
                  1,
                  "Honda BRV",
                ),
                MidtransItem(
                  "201",
                  10000000,
                  1,
                  "Honda BRV",
                )
              ],
              skipCustomer: true,
              customField1: "ANYCUSTOMFIELD"),
        )
        .catchError((err) => print("ERROR $err"));
  }

  Future<void> _callback(TransactionFinished finished) async {
    setState(() {
      isMakePayment = false;
    });
    return Future.value(null);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Plugin example app'),
        ),
        body: new Center(
          child: isMakePayment
              ? CircularProgressIndicator()
              : RaisedButton(
                  child: Text("Make Payment"),
                  onPressed: () => _makePayment(),
                ),
        ),
      ),
    );
  }
}