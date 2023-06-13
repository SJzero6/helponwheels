import 'package:flutter/material.dart';
import 'package:helponwheels/screens/home.dart';
import 'package:helponwheels/screens/profile.dart';
//import 'package:helponwheels/screens/login.dart';
//import 'package:helponwheels/screens/signup.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:ProfilePage() ,);
  }
}