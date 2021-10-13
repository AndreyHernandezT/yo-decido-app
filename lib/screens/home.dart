import 'package:flutter/material.dart';
import 'package:primer_avance/screens/list_methods.dart';
import 'package:primer_avance/src/constants.dart';
import 'package:primer_avance/widgets/method_card_vertical.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorFondo,
        body: ListView(
          children: [
            Flexible(
              flex: 2,
              child: Text(
                " Métodos Anticonceptivos Masculinos ",
                style: estiloTitulo2,
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
                child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 175,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset("assets/CONDON.jpg"),
                          ListTile(
                            title: Text(
                              "Preservativo Masculino",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset(
                            "assets/vasectomia.jpg",
                            width: 200,
                            height: 120,
                          ),
                          ListTile(
                            title: Text(
                              "Vasectomía",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset(
                            "assets/gel.jpg",
                            height: 120,
                          ),
                          ListTile(
                            title: Text(
                              "Anticonceptivo en gel",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset("assets/MAS.jpg"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
            Flexible(
              flex: 2,
              child: Text(
                "Métodos Anticonceptivos Femenino",
                style: estiloTitulo2,
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
                child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset("assets/pastillas.jpg"),
                          ListTile(
                            title: Text(
                              "Píldora anticonceptiva",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset(
                            "assets/TEEE.jpg",
                            height: 120,
                          ),
                          ListTile(
                            title: Text(
                              "T anticonceptiva",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset(
                            "assets/CONDONF.jpg",
                            height: 115,
                          ),
                          ListTile(
                            title: Text(
                              "Condon Femenino",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset("assets/MAS.jpg"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
            Flexible(
              flex: 2,
              child: Text(
                " Estadisticas ",
                style: estiloTitulo2,
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
                child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset(
                            "assets/Jovenes_Nacidos.PNG",
                            height: 115,
                          ),
                          ListTile(
                            title: Text(
                              "Niños nacidos del 2008 - 2017",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset(
                            "assets/Estado.PNG",
                            height: 115,
                          ),
                          ListTile(
                            title: Text(
                              "Estado de la madre",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset(
                            "assets/NoFetales.PNG",
                            height: 115,
                          ),
                          ListTile(
                            title: Text(
                              "Embarazos no fetales",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset("assets/MAS.jpg"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
          ],
        ));
  }
}
