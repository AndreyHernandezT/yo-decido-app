import 'package:flutter/material.dart';

class Methods extends StatefulWidget {
  @override
  _MethodsState createState() => _MethodsState();
}

class _MethodsState extends State<Methods> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Theme.of(context).primaryColor,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 5.0,
                  )
                ]),
            child: Text(
              'Métodos',
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
