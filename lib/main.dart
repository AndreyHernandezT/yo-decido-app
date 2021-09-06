import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:primer_avance/screens/home.dart';
import 'package:primer_avance/screens/methods.dart';
import 'package:primer_avance/screens/profile.dart';
import 'package:primer_avance/screens/statistics.dart';
//import 'package:primer_avance/screens/home.dart';

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
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 27.0,
          //selectedIconTheme:
          backgroundColor: Colors.white,
          currentIndex: paginaActual,
          onTap: (index) {
            setState(() {
              paginaActual = index;
            });
          },
          unselectedItemColor: Colors.blueGrey[500],
          //unselectedIconTheme: ,
          selectedItemColor: Color(0XFF022E57),
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.analytics), label: "Estadísticas"),
            BottomNavigationBarItem(
                icon: Icon(Icons.health_and_safety), label: "Métodos"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Perfil"),
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
