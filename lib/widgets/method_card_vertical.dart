import 'package:flutter/material.dart';
import 'package:primer_avance/screens/list_methods.dart';
import 'package:primer_avance/screens/pages/template.dart';

class CreateCardVertical extends StatefulWidget {
  const CreateCardVertical({Key? key}) : super(key: key);

  @override
  _CreateCardVerticalState createState() => _CreateCardVerticalState();
}

class _CreateCardVerticalState extends State<CreateCardVertical> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        children: [
          InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 22),
              width: 200,
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
                  image: NetworkImage(
                      "https://st2.depositphotos.com/1074529/8158/v/600/depositphotos_81583894-stock-illustration-condom.jpg"),
                  //fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        "CONDÓN MASCULINO",
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
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(children: [
                            Icon(
                              Icons.data_usage_sharp,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            SizedBox(width: 7),
                            Text(
                              "82".toString() + '%',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ]),
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
                                "Cada vez",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    //alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
            ),
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return SelectedMethod(method: (Methods()[0]));
              // }));
            },
          )
        ]);
  }
}
