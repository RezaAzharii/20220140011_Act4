import 'package:flutter/material.dart';
import 'package:nrpp_app/pages/home_page.dart';
import 'package:nrpp_app/pages/login_page.dart';
import 'package:nrpp_app/pages/order_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/Login',
      routes: {
        '/Login': (context) => const LoginPage(),
        '/Home': (context) => const HomePage(),
        '/Order': (context) => const OrderPage()
      },
    );
  }
}