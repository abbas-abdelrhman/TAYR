import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
                title: Text('Login to TAYR'),
                centerTitle: true,
                backgroundColor: const Color(0xFF232F34),
              ),
      body:Padding(
            padding: EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Welcome wih TYER',
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
                    labelText: 'User Name',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  //forgot password screen
                },
                textColor: const Color(0xFF4A6572),
                child: Text('Forgot Password'),
              ),
              Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: const Color(0xFF344955),
                    child: Text('Login',style: TextStyle(fontSize: 20)),
                    onPressed: () { Navigator.of(context).pushNamed('homepage');},
                  )),
              Container(
                  child: Row(
                children: <Widget>[
                  Text('Does not have account?'),
                  // ignore: deprecated_member_use
                  FlatButton(
                    textColor: const Color(0xFFF9AA33),
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () { Navigator.of(context).pushNamed('signuppage');},
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ))
            ])));
  }
}
