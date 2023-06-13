import 'package:flutter/material.dart';
import 'package:helponwheels/screens/Routmap.dart';
//import 'package:helponwheels/screens/home.dart';
//import 'package:helponwheels/screens/profile.dart';
//import 'package:helponwheels/screens/login.dart';
//import 'package:helponwheels/screens/signup.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home:Route_map() ,);
  }
}