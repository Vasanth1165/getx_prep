import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_prep/home_page.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            size: 24,
            color: Colors.white
          ),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.green,
          
        ),
        buttonBarTheme: const ButtonBarThemeData(
          
        ),
        primaryColor: Colors.green,
        primarySwatch: Colors.green,
        sliderTheme: const SliderThemeData(
          thumbColor: Colors.green,
          activeTrackColor: Colors.green
        )
      ),
      home: const Homepage(),
    );
  }
}