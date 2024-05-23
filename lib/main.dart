import 'package:flutter/material.dart';
import 'package:norvic_care_clone/dashBoard.dart';
import 'package:norvic_care_clone/loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter_demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          primary: const Color.fromARGB(255, 3, 71, 126),
        ),
      ),
      // home: LoginPage(),
      home: DashBoard(),
    );
  }
}
