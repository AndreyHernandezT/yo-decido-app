import 'dart:ui';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:primer_avance/screens/home.dart';
import 'package:primer_avance/screens/methods.dart';
import 'package:primer_avance/screens/profile.dart';
import 'package:primer_avance/screens/statistics.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int paginaActual = 0;
  List<Widget> paginas = [home(), Statistics(), Methods(), Profile()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World App',
      home: Scaffold(
        backgroundColor: Color(0xFFFFF5FD),
        body: paginas[paginaActual],
        bottomNavigationBar: FFNavigationBar(
          theme: FFNavigationBarTheme(
            barBackgroundColor: Colors.white,
            selectedItemBorderColor: Color(0XFFFF96AD),
            selectedItemBackgroundColor: Color(0xFFFFDEE5),
            selectedItemIconColor: Color(0XFF022E57),
            selectedItemLabelColor: Colors.black,
          ),
          selectedIndex: paginaActual,
          onSelectTab: (index) {
            setState(() {
              paginaActual = index;
            });
          },
          items: [
            FFNavigationBarItem(iconData: Icons.home, label: "Inicio"),
            FFNavigationBarItem(
                iconData: Icons.analytics, label: "Estadísticas"),
            FFNavigationBarItem(
                iconData: Icons.health_and_safety, label: "Métodos"),
            FFNavigationBarItem(
                iconData: Icons.account_circle, label: "Perfil"),
          ],
        ),
      ),
      theme: ThemeData(
          primaryColor: Color(0XFFFF96AD),
          accentColor: Color(0xFFFFDEE5),
          highlightColor: Color(0XFF022E57),
          textTheme: TextTheme(
              headline1: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Color(0XFF022E57),
              ),
              headline2: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.normal,
                color: Colors.blueGrey[200],
              ),
              headline3: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
                color: Colors.blueGrey[200],
              ))),
    );
  }
}
