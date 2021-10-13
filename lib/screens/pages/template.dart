import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:primer_avance/models/Method.dart';
import 'package:primer_avance/src/constants.dart';

class SelectedMethod extends StatelessWidget {
  final Method method;

  SelectedMethod({
    required this.method,
  });

  Widget levelEfficiency(method, efficien) {
    final Color level;
    TextStyle? body;
    if (int.parse(efficien) > 85) {
      level = Colors.green;
      body = estiloTextoVerde;
    } else {
      level = Colors.yellow;
      body = TextStyle(
        color: Colors.yellow,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      );
    }
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        Icons.data_usage_sharp,
        color: level,
        size: 35,
      ),
      SizedBox(width: 7),
      Text(
        method.efficiency.toString() + '%',
        style: body,
      ),
    ]);
  }

  Widget pageDetails(Method method) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        resumen(method),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Detalles",
            style: estiloTitulo2,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            method.description,
            style: estiloTexto1,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
          height: 180,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.6),
                offset: Offset(
                  0.0,
                  10.0,
                ),
                blurRadius: 10.0,
                spreadRadius: -6.0,
              ),
            ],
            image: DecorationImage(
              image: NetworkImage(method.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget resumen(Method method) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(10),
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: colorAzulOscuro.withOpacity(0.9),
                  //borderRadius: BorderRadius.circular(15),
                  shape: BoxShape.circle,
                ),
                child: levelEfficiency(method, method.efficiency),
              ),
              Row(
                children: [
                  Icon(
                    Icons.data_usage_sharp,
                    color: colorAzulOscuro,
                    size: 18,
                  ),
                  Text(
                    "Efectividad",
                    style: estiloTexto2,
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                alignment: Alignment.center,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: colorAzulOscuro.withOpacity(0.9),
                    shape: BoxShape.circle),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.offline_bolt_rounded,
                      color: colorSecundario,
                      size: 30,
                    ),
                    SizedBox(width: 7),
                    Text(
                      method.metodo,
                      style: estiloTextoBlanco,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.offline_bolt_rounded,
                    color: colorAzulOscuro,
                    size: 18,
                  ),
                  Text(
                    "Método",
                    style: estiloTexto2,
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                alignment: Alignment.center,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: colorAzulOscuro.withOpacity(0.9),
                  //borderRadius: BorderRadius.circular(15),
                  shape: BoxShape.circle,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_today_rounded,
                      color: colorSecundario,
                      size: 30,
                    ),
                    SizedBox(width: 7),
                    Text(
                      method.regimen,
                      style: estiloTextoBlanco,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.calendar_today_rounded,
                    color: colorAzulOscuro,
                    size: 18,
                  ),
                  Text(
                    "Régimen",
                    style: estiloTexto2,
                  )
                ],
              ),
            ],
          )
        ],
      ),
      Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
            children: (method.benefits).map((text) {
          return Column(children: [
            Text(
              text,
              style: estiloTexto2,
            ),
          ]);
        }).toList()),
      ),
    ]);
  }

  Widget pageDescription(Method method) {
    return ListView(
      padding: EdgeInsets.only(left: 10),
      children: [
        resumen(method),
        Text(
          "Descripción",
          style: estiloTitulo2,
        ),
        Text(
          method.details,
          style: estiloTexto1,
        ),
      ],
    );
  }

  Widget pageComo(Method method) {
    return ListView(
      padding: EdgeInsets.only(left: 10),
      children: [
        resumen(method),
        Text(
          "Modo de Uso",
          style: estiloTitulo2,
        ),
        Text(
          method.use.description,
          style: estiloTexto1,
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
              children: (method.use.imgs).map((text) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              height: 180,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: Offset(
                      0.0,
                      10.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: -6.0,
                  ),
                ],
                image: DecorationImage(
                  image: NetworkImage(text),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList()),
        ),
      ],
    );
  }

  Widget pageProsCons(Method method) {
    return ListView(padding: EdgeInsets.only(left: 10, right: 10), children: [
      resumen(method),
      Card(
        shadowColor: Colors.black,
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_circle,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "PROS",
                    style: estiloTituloBlanco,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                  children: (method.pros).map((text) {
                return Container(
                  child: Row(children: [
                    Icon(
                      Icons.add_circle,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Flexible(
                      child: Text(
                        text,
                        style: estiloTextoBlanco,
                      ),
                    )
                  ]),
                );
              }).toList()),
            ],
          ),
        ),
      ),
      Card(
        shadowColor: Colors.black,
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.remove_circle,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "CONTRAS",
                    style: estiloTituloBlanco,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                  children: (method.cons).map((text) {
                return Container(
                  child: Row(children: [
                    Icon(
                      Icons.remove_circle,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Flexible(
                      child: Text(
                        text,
                        style: estiloTextoBlanco,
                      ),
                    )
                  ]),
                );
              }).toList()),
            ],
          ),
        ),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorFondo,
        body: DefaultTabController(
          length: 4,
          child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    title: Text(
                      method.name,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    expandedHeight: MediaQuery.of(context).size.height * 0.35,
                    floating: false,
                    pinned: true,
                    backgroundColor: colorPrimario,
                    flexibleSpace: FlexibleSpaceBar(
                        background:
                            Image.network(method.image, fit: BoxFit.cover)),
                    bottom: TabBar(
                      indicatorColor: colorAzulOscuro,
                      labelColor: colorAzulOscuro,
                      unselectedLabelColor: colorAzulOscuro2,
                      tabs: [
                        new Tab(icon: new Icon(Icons.info), text: "Detalles"),
                        new Tab(
                            icon: new Icon(Icons.lightbulb),
                            text: "Descripción"),
                        new Tab(icon: Icon(Icons.help), text: "Uso"),
                        new Tab(
                          icon: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add_circle),
                                Icon(Icons.remove_circle)
                              ]),
                          text: "Pros & Contras",
                        )
                      ],
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  pageDetails(method),
                  pageDescription(method),
                  pageComo(method),
                  pageProsCons(method),
                ],
              )),
        ));
  }
}
