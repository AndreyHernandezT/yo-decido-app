import 'package:flutter/material.dart';
import 'package:primer_avance/models/Method.dart';
import 'package:primer_avance/screens/pages/template.dart';

class CreateCards extends StatelessWidget {
  final List<Method> methods;

  CreateCards({
    required this.methods,
  });

  Widget levelEfficiency(method, efficien, context) {
    final Color level;
    TextStyle? body;
    if (int.parse(efficien) > 85) {
      level = Colors.green;
      body = Theme.of(context).textTheme.bodyText2;
    } else {
      level = Colors.yellow;
      body = TextStyle(
        color: Colors.yellow,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );
    }
    return Row(children: [
      Icon(
        Icons.data_usage_sharp,
        color: level,
        size: 18,
      ),
      SizedBox(width: 7),
      Text(
        method.efficiency.toString() + '%',
        style: body,
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: methods.length,
        itemBuilder: (context, index) {
          final _method = methods[index];
          return InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              width: MediaQuery.of(context).size.width,
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
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.35),
                    BlendMode.multiply,
                  ),
                  image: NetworkImage(_method.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        _method.name,
                        style: Theme.of(context).textTheme.headline1,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: levelEfficiency(
                              _method, _method.efficiency, context),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.offline_bolt_rounded,
                                color: Color(0xFFFFDEE5),
                                size: 18,
                              ),
                              SizedBox(width: 7),
                              Text(
                                _method.metodo,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_today_rounded,
                                color: Color(0xFFFFDEE5),
                                size: 18,
                              ),
                              SizedBox(width: 7),
                              Text(
                                _method.regimen,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SelectedMethod(method: _method);
              }));
            },
          );
        });
  }
}
