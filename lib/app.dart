import 'package:flutter/material.dart';
import 'package:login_with_state/src/home/home_page.dart';
import 'package:login_with_state/src/login/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final Login = "login";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        Login:(context) => LoginPage()
      } ,
    );
  }
}
