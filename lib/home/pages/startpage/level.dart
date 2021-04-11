import 'package:flutter/material.dart';
import '../../../components/drawer.dart';



class Level extends StatefulWidget {
  @override
  _LevelState createState() => _LevelState();
}

class _LevelState extends State<Level> {


  @override
  Widget build(BuildContext context) {
          return Scaffold(
              appBar: AppBar(
                title: Text('Levels&Rank'),
                backgroundColor: const Color(0xFF232F34),
                actions: <Widget>[
// ignore: deprecated_member_use
                  IconButton(
                    icon: Icon(Icons.settings),
                    tooltip: 'Setting Icon',
                    onPressed: () {},
                  ),
                ],
                //<Widget>[]
              ),
              drawer: MyDrawer(),
              body: Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView(children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Level     Days',
                          style: TextStyle(
                              color: const Color(0xFFF9AA33),
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Fighter     0',
                          style: TextStyle(
                              color: const Color(0xFFF9AA33),
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Metal Fighter     5',
                          style: TextStyle(
                              color: const Color(0xFFF9AA33),
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'bronze Fighter     10',
                          style: TextStyle(
                              color: const Color(0xFFF9AA33),
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Silver Fighter      20',
                          style: TextStyle(
                              color: const Color(0xFFF9AA33),
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Gold Fighter     35',
                          style: TextStyle(
                              color: const Color(0xFFF9AA33),
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Diamond Fighter     60',
                          style: TextStyle(
                              color: const Color(0xFFF9AA33),
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Superhero     90',
                          style: TextStyle(
                              color: const Color(0xFFF9AA33),
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                  ])));
  }
}













