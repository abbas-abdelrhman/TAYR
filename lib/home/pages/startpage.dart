
import 'package:flutter/cupertino.dart';
import '../pages/startpage/counter.dart';
import 'package:flutter/material.dart';
import '../pages/startpage/health.dart';
import '../pages/startpage/level.dart';
import '../pages/startpage/maindaychallenge.dart';




class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      
      tabBar: CupertinoTabBar(
        backgroundColor: const Color(0xFF232F34),
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.timer, color:  const Color(0xFFF9AA33),),
            label: 'Days Counter',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.scope, color:  const Color(0xFFF9AA33),),
            label: 'Day\'s Challenges',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart, color:  const Color(0xFFF9AA33),),
            label: 'Health',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.star_circle, color:  const Color(0xFFF9AA33), size:35 ),
            label: 'Level & Rank',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: DaysCounter(),
              );
            });
            break;
          case 1:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: GeeksForGeeks(),
              );
            });
            break;
          case 2:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Health(),
              );
            });
            break;
          case 3:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Level(),
              );
            });
            break;

        }
        return returnValue;
      },
    );
  }
}
