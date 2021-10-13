import 'package:flutter/material.dart';
import 'package:primer_avance/src/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorFondo,
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        children: [
          Card(
            color: colorBlanco,
            child: Column(
              children: [
                Text(
                  "Tasa de fecundación en Colombia",
                  style: estiloTitulo2,
                ),
                Container(
                  width: 400,
                  height: 350,
                  child: Image.asset("assets/Taza_Fecundacion.PNG"),
                ),
              ],
            ),
          ),
          Card(
            color: colorBlanco,
            child: Column(
              children: [
                Text(
                  "Bebés nacidos del 2008 - 2014",
                  style: estiloTitulo2,
                ),
                Container(
                  width: 400,
                  height: 350,
                  child: Image.asset("assets/Jovenes_Nacidos.PNG"),
                ),
              ],
            ),
          ),
          Card(
            color: colorBlanco,
            child: Column(
              children: [
                Text(
                  "Bebés nacidos del 2008 - 2017 Madres entre 10 - 19 años",
                  style: estiloTitulo2,
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 400,
                  height: 350,
                  child: Image.asset("assets/Jovenes_Nacidos2.PNG"),
                ),
              ],
            ),
          ),
          Card(
            color: colorBlanco,
            child: Column(
              children: [
                Text(
                  "Porcentajes de Fecundacion en intervalos de edad",
                  style: estiloTitulo2,
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 400,
                  height: 350,
                  child: Image.asset("assets/Porcentaje_Fecundacion.PNG"),
                ),
              ],
            ),
          ),
          Card(
            color: colorBlanco,
            child: Column(
              children: [
                Text(
                  "Lugar del Partos",
                  style: estiloTitulo2,
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 400,
                  height: 350,
                  child: Image.asset("assets/Partos.PNG"),
                ),
              ],
            ),
          ),
          Card(
            color: colorBlanco,
            child: Column(
              children: [
                Text(
                  "Estados de la Madre",
                  style: estiloTitulo2,
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 400,
                  height: 350,
                  child: Image.asset("assets/Estado.PNG"),
                ),
              ],
            ),
          ),
          Card(
            color: colorBlanco,
            child: Column(
              children: [
                Text(
                  "Embarazos no Fetales entre 2008 - 2017",
                  style: estiloTitulo2,
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 400,
                  height: 350,
                  child: Image.asset("assets/NoFetales.PNG"),
                ),
              ],
            ),
          ),
          Card(
            color: colorPrimario,
            child: Column(
              children: [
                Text(
                  "REFERENCIAS",
                  style: estiloTituloBlanco,
                  textAlign: TextAlign.center,
                ),
                Container(
                  child: Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: Container(
                          width: 200,
                          height: 120,
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            child: Image.asset(
                              "assets/DANE.png",
                            ),
                            onPressed: () {
                              _launchURL(
                                  "https://www.dane.gov.co/files/investigaciones/poblacion/cifras-definitivas-2017.pdf");
                            },
                            shape: StadiumBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Flexible(
                        flex: 3,
                        child: Container(
                          width: 200,
                          height: 120,
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            child: Image.asset(
                              "assets/ICBF.png",
                            ),
                            onPressed: () {
                              _launchURL(
                                  "https://www.icbf.gov.co/sites/default/files/embarazo-adolescente-web2015.pdf");
                            },
                            shape: StadiumBorder(),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          width: 200,
                          height: 120,
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            child: Image.asset(
                              "assets/BOGOTA.png",
                            ),
                            onPressed: () {
                              _launchURL(
                                  "https://saludata.saludcapital.gov.co/osb/index.php/datos-de-salud/salud-sexual-y-reproductiva/fecundidad-10-19/");
                            },
                            shape: StadiumBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _launchURL(_url) async => await launch(_url);
