import 'dart:ui';
// ignore: import_of_legacy_library_into_null_safe
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:primer_avance/screens/home.dart';
import 'package:primer_avance/screens/list_methods.dart';
import 'package:primer_avance/screens/profile.dart';
import 'package:primer_avance/screens/statistics.dart';
import 'package:primer_avance/src/constants.dart';

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
      home: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Color(0XFFFF96AD),
                title: Text(
                  'YoDecido',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                floating: true,
                snap: true,
                //forceElevated: innerBoxIsScrolled,
                actions: [
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.search_rounded),
                      onPressed: () {},
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFFDEE5),
                    ),
                    margin: EdgeInsets.all(9.0),
                  ),
                ],
              ),
            ];
          },
          body: paginas[paginaActual],
        ),
        bottomNavigationBar: FFNavigationBar(
          theme: FFNavigationBarTheme(
            barBackgroundColor: colorBlanco,
            selectedItemBorderColor: colorPrimario,
            selectedItemBackgroundColor: colorSecundario,
            selectedItemIconColor: colorAzulOscuro,
            selectedItemLabelColor: colorAzulOscuro2,
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
        primaryColor: colorPrimario,
        highlightColor: colorSecundario,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          bodyText2: TextStyle(
            color: Colors.green,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          headline1: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline2: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
