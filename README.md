# midtrans-config-mobile

midtrans menggunakan paket [flutrans](https://pub.dev/packages/flutrans) pada FLutter.
#### Android Setup

1. Add style to your **android/app/src/main/res/values/styles.xml** :
```
<style name="AppTheme" parent="Theme.AppCompat.Light.DarkActionBar">
    <item name="windowActionBar">false</item>
    <item name="windowNoTitle">true</item>
</style>
```
2. And full **styles.xml** will be like below :
```
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <style name="LaunchTheme" parent="@android:style/Theme.Black.NoTitleBar">
        <!-- Show a splash screen on the activity. Automatically removed when
             Flutter draws its first frame -->
        <item name="android:windowBackground">@drawable/launch_background</item>
    </style>
    <style name="AppTheme" parent="Theme.AppCompat.Light.DarkActionBar">
        <item name="windowActionBar">false</item>
        <item name="windowNoTitle">true</item>
    </style>
</resources>
```
3. Add the style to you Android Manifest in your **<manifest>** :
```
xmlns:tools="http://schemas.android.com/tools"
```
4. and Add the style to you Android Manifest in your **<applicatioin>** :
```
tools:replace="android:label"
android:theme="@style/AppTheme"
```

#### Installing

1. Add this to your package's pubspec.yaml file:
```sh
dependencies:
  flutrans: ^0.0.4
```
2. You can install packages from the command line, with Flutter:
```sh
$ flutter pub get
```
3. Now in your Dart code, you can use:
```
import 'package:flutrans/flutrans.dart';
```

#### Penjelasan Access Keys
> **Client Key**: Kunci API yang digunakan untuk otorisasi konfigurasi pada halaman frontend. Client Key dapat anda simpan pada halaman frontend.

> **Server Key**: Kunci API yang digunakan untuk otorisasi pada saat memanggil API Midtrans melalui backend anda. Sifat dari Server key sangat rahasia dan tidak dapat disimpan pada halaman frontend.