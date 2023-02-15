import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homescreentest3/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: const InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Color(0xff3AD5A6)),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                width: 3,
                color: Color(0xff3AD5A6),
              )))),
      home: const MyHomePage(),
    );
  }
}
