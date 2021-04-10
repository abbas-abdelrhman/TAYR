import 'package:flutter/material.dart';
import '../../components/drawer.dart';


class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
return MaterialApp(
            home: DefaultTabController(
              length: 4,
              child: Scaffold(
                appBar: AppBar(
                  title: Text('Start Page'),
                  centerTitle: true,
                  backgroundColor: const Color(0xFF232F34),
                  bottom: TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(text: "Days Counter",),
                      Tab(text: "Level & Rank",),
                      Tab(text: "Health",),
                      Tab(text: "Day Challenge",),
                    ],)
                ),
                drawer: MyDrawer(),
              body: const TabBarView(
                        children: <Widget>[
                          
                          Center(
                            child: Text('It\'s Days Counter here'),
                          ),
                          Center(
                            child: Text('It\'s Level & Rank here'),
                          ),
                        Center(
                            child: Text('It\'s Health here'),
                          ),
                          Center(
                            child: Text('It\'s Day Challenge here'),
                          ),
                        ],
                      ),                

              )),
          );      
    
  }
}