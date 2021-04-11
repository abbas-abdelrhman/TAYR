import 'package:flutter/material.dart';


class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
              appBar: AppBar(
                title: Text('Cummunity'),
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
              body: Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView(children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Write Feedbake or Questions',
                          style: TextStyle(
                              color: const Color(0xFFF9AA33),
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Write Messages',
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                        height: 50,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: const Color(0xFF4A6572),
                          child: Text('Submit', style: TextStyle(fontSize: 20)),
                          onPressed: () { Navigator.of(context).pushNamed('homepage');},
                        )),
                  ]))
                  
                  );
                  
                  
                  
                  }}