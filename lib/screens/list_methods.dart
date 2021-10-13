import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:primer_avance/models/Method.dart';
import 'package:primer_avance/widgets/method_card.dart';

class Methods extends StatefulWidget {
  @override
  _MethodsState createState() => _MethodsState();
}

class _MethodsState extends State<Methods> {
  List<Method> _method = [];

  void initState() {
    super.initState();
    _populateAllMethods();
  }

  void _populateAllMethods() async {
    final methods = await getMethods();
    setState(() {
      _method = methods;
    });
  }

  Future<String> getJson() {
    return rootBundle.loadString("sources/data.json");
  }

  Future<List<Method>> getMethods() async {
    var result = jsonDecode(await getJson());
    Iterable list = result["methods"];

    return list.map((method) => Method.fromJson(method)).toList();
  }

  Widget build(BuildContext context) {
    return CreateCards(methods: _method);
  }
}
