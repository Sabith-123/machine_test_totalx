import 'package:flutter/material.dart';
import 'package:machine_test_totalx/views/login_page.dart';
import 'package:machine_test_totalx/views/otp_verification_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Machine Test TotalX', 
      home: LoginPage()
    );
  }
}