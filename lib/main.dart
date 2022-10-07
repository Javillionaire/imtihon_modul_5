import 'package:flutter/material.dart';
import 'package:imtihon_modul_5/appbook/appbook.dart';
import 'package:imtihon_modul_5/appoitmant_page/appointmant_page.dart';
import 'package:imtihon_modul_5/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.white)),
      routes: {
        '/home': (context) => const HomePage(),
        '/appointment': (context) => const AppointmentPage(),
        '/appbook': (context) => const AppBook()
      },
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
    );
  }
}
