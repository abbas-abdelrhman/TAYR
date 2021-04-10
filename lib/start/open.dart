import 'package:flutter/material.dart';


class OpenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
          return Scaffold(
              appBar: AppBar(
                title: Text('TAYR'),
                centerTitle: true,
                backgroundColor: const Color(0xFF232F34),
              ),
              body: Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView(children: <Widget>[
                
                    
              Container(
                  height: 50,
                  margin: EdgeInsets.fromLTRB(20, 100, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0)),

                  // ignore: deprecated_member_use
                  child: RaisedButton(

                    textColor: Colors.white,
                    color: const Color(0xFF4A6572),
                    child: Text('Overview about your new journey',style: TextStyle(fontSize: 20)),
                    onPressed: () {
                    //Navigator.push(ctx, SmokingDamages());
                    },
                  )),

              Container(
                  height: 50,
                  margin: EdgeInsets.all(20),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: const Color(0xFF4A6572),
                    child: Text('Login',style: TextStyle(fontSize: 20)),
                    onPressed: () { Navigator.of(context).pushNamed('loginpage');  },
                  )),


              Container(
                  height: 50,
                  margin: EdgeInsets.all(20),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    textColor: const Color(0xFF232F34),
                    color: const Color(0xFFF9AA33),
                    child: Text('Creat acount',style: TextStyle(fontSize: 20)),
                    onPressed: () { Navigator.of(context).pushNamed('signuppage'); },
                  )),

                  ])
                  
                  )
                  );
  }
  
}