import 'package:flutter/material.dart';
import 'package:primer_avance/widgets/method_card.dart';

class Methods extends StatefulWidget {
  @override
  _MethodsState createState() => _MethodsState();
}

class _MethodsState extends State<Methods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF5FD),
      body: MethodCard(
        name: 'Condón Masculino',
        efficiency: 80,
        regimen: 'Cada vez',
        method: 'Barrera',
        image:
            'https://us.123rf.com/450wm/roiandroi/roiandroi1807/roiandroi180700007/104851049-condones-de-l%C3%A1tex-icono-de-vector-de-anticoncepci%C3%B3n-en-el-paquete-ilustraci%C3%B3n-de-dibujos-animados-ai.jpg?ver=6',
      ),
    );
  }
}
