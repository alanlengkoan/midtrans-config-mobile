# midtrans-config-mobile

untuk bagian ini saya menggunakan cara dengan menggunakan ***servey key API***, yaitu dengan mengirim data ke internet dengan menggunakan paket [http](https://pub.dev/packages/http) dan [url_launcher](https://pub.dev/packages/url_launcher).

#### Installing

1. Add this to your package's **pubspec.yaml** file:
```sh
dependencies:
  http: ^0.12.1
  url_launcher: ^5.4.10
```
2. You can install packages from the command line, with Flutter:
```sh
$ flutter pub get
```
3. Now in your **main.dart** code, you can use:
```
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
```
4. In the **main.dart** file add:
```
import 'dart:convert';
import 'dart:math';
import './transaksi.dart';
```

#### Penjelasan Access Keys
> **Client Key**: Kunci API yang digunakan untuk otorisasi konfigurasi pada halaman frontend. Client Key dapat anda simpan pada halaman frontend.

> **Server Key**: Kunci API yang digunakan untuk otorisasi pada saat memanggil API Midtrans melalui backend anda. Sifat dari Server key sangat rahasia dan tidak dapat disimpan pada halaman frontend.