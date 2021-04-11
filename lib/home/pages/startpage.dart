// Copyright 2019 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
