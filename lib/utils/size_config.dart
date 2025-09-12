import 'package:flutter/material.dart';

class SiceConfig {
  // class MediaQuery adalah class yang berfungsi untuk membuat aplikasi menjadi responsif
  // dengan cara mengambil ukuran aktual pada layar platform
  static MediaQueryData _mediaQueryData =
   MediaQueryData.fromView(
    // ignore: deprecated_member_use
    WidgetsBinding.instance.window
  );
  // variable untuk menampung default size dari aplikasi, 
  //sebelum di deploy ke platfor yang spesifik,
  // mendapatkan ukuran aktual dari platform tersebut
  // (misal: di deploy ke platform android)
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double defaultSize = 0.0;

  //  fungsi dari function ini adalah untuk pemanggilan awal ketika aplikasi dijalankan
  // dan untuk mendapatkan ukuran dari layar platform

  void init(BuildContext context) {
    // berfungsi untuk mengambil ukuran aktual dari platform karna didalam variable _MediaQueryData... 
    //didalmnya memanggil class MediaQuery yang class Media Query itu sendiri berfungsi untuk 
    //mengambil ukuran aktual dari platform
    _mediaQueryData = MediaQuery.of(context);
    // untuk emngambil hanya data ukuran width saja begitu pula dengan yang height sammaa banget
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }
}

// menggunakan size standar dari handhphone iphone x (812 x 375)
double getProporsionateScreenHeight(double inputHeight) {
  double screenHeight = SiceConfig.screenHeight;
  // ini adalah perhitungan untuk menghasilkan nilai dan ukuran objek yang sesuai dengan platform.
  return (inputHeight / 812.0) * screenHeight;
}

double getProporsionateScreenWidht(double inputWidht) {
  double screenWidht = SiceConfig.screenWidth;
  return (inputWidht / 375.0) * screenWidht;
}