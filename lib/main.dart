import 'package:flutter/material.dart';
import 'package:tayr/start/Registration/login.dart';
import 'start/open.dart';
import './start/Registration/login.dart';
import './start/Registration/signup.dart';
import './home/homepage.dart';
import 'home/pages/startpage.dart';
import 'home/pages/smokingdamages.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner : false,

      // Start
          title:"TAYR",
          home: OpenPage(),
          routes: {
            'loginpage':  (context) { return LoginPage();  },
            'signuppage': (context) { return SignupPage(); },
            'homepage':   (context) { return HomePage();    },
            'startpage':   (context) { return StartPage();    },
            'smokingpage':   (context) { return ListViewPage();    },

          },


      //  End
    );
  }
}

