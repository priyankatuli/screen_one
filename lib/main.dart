import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:screen_one/home_screen.dart';

void main(){
  runApp(
    DevicePreview(
    enabled: kDebugMode,
    builder: (context) => const MyApp(),
  ),);
}

class MyApp extends StatelessWidget{
   const MyApp( {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2CAB00), // backgroundColor: Color.fromRGBO(44, 171, 0, 0.8),//Color(0xFF00AB2C),
          foregroundColor: Colors.white,
          centerTitle: true,
        )
      ),
    );
  }

}