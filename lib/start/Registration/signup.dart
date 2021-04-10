import 'package:flutter/material.dart';


class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return Scaffold(
              appBar: AppBar(
                title: Text('SignUp'),
                centerTitle: true ,
                backgroundColor: const Color(0xFF232F34),
              ),
              body: Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView(children: <Widget>[

                Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                  ),
                ),
              ),
                    
                Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone',
                  ),
                ),
              ),

                Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Type your Email',
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
              
              Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  height: 50,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: const Color(0xFF4A6572),
                    child: Text('Submit',style: TextStyle(fontSize: 20)),
                    onPressed: () {Navigator.of(context).pushNamed('homepage');  },
                  )),

                  ])));  }
  
}