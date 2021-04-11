import 'package:flutter/material.dart';
import 'package:tayr/components/drawer.dart';

import '../../../model/notification_setting.dart';





class DaysChallenge extends StatefulWidget {

  @override
  _DaysChallengeState createState() => _DaysChallengeState();
}

class _DaysChallengeState extends State<DaysChallenge> {
  final allowNotifications = NotificationSetting(title: 'All Done      Total Point: 200');

  final notifications = [
    NotificationSetting(title: 'Walk and  Gymnastics. (5 Points)'),
    NotificationSetting(title: 'Health care tips.(10 Points)'),
    NotificationSetting(title: 'Reading  articles. (15 Points)'),
    NotificationSetting(title: 'Nicotine hormone. (25 Points)'),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Days Challenge"),
          centerTitle: true,
          backgroundColor: const Color(0xFF232F34),
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: [
            buildToggleCheckbox(allowNotifications),
            Divider(),
            ...notifications.map(buildSingleCheckbox).toList(),
          ],
        ),
      );

  Widget buildToggleCheckbox(NotificationSetting notification) => buildCheckbox(
      notification: notification,
      onClicked: () {
        final newValue = !notification.value;

        setState(() {
          allowNotifications.value = newValue;
          notifications.forEach((notification) {
            notification.value = newValue;
          });
        });
      });

  Widget buildSingleCheckbox(NotificationSetting notification) => buildCheckbox(
        notification: notification,
        onClicked: () {
          setState(() {
            final newValue = !notification.value;
            notification.value = newValue;

            if (!newValue) {
              allowNotifications.value = false;
            } else {
              final allow =
                  notifications.every((notification) => notification.value);
              allowNotifications.value = allow;
            }
          });
        },
      );

  Widget buildCheckbox({
    @required NotificationSetting notification,
    @required VoidCallback onClicked,
  }) =>
      ListTile(
        onTap: onClicked,
        leading: Checkbox(
          value: notification.value,
          onChanged: (value) => onClicked(),
        ),
        title: Text(
          notification.title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
}




























class GeeksForGeeks extends StatefulWidget {

  @override
  _GeeksForGeeksState createState() => _GeeksForGeeksState();
}

class _GeeksForGeeksState extends State<GeeksForGeeks> {

// This widget is the root of your application
@override
Widget build(BuildContext context) {
	return MaterialApp(
	home: Scaffold(
		appBar: AppBar(
                title: Text('Days Challenge'),
                centerTitle: true,
                backgroundColor: const Color(0xFF232F34),
              ),
    drawer: MyDrawer(),
		body: GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
    Container(
      padding: const EdgeInsets.all(8),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    textColor: const Color(0xFF232F34),
                    color: const Color(0xFFF9AA33),
                    child: Text('Day 1',style: TextStyle(fontSize: 20)),
                    onPressed: () { Navigator.of(context).pushNamed('challenge');},
                  ),
      color: Colors.teal[100],
      
    ),
        Container(
      padding: const EdgeInsets.all(8),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    textColor: const Color(0xFF232F34),
                    color: const Color(0xFFF9AA33),
                    child: Text('Day 2',style: TextStyle(fontSize: 20)),
                    onPressed: () { Navigator.of(context).pushNamed('challenge');},
                  ),
      color: Colors.teal[100],
      
    ),
        Container(
      padding: const EdgeInsets.all(8),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    textColor: const Color(0xFF232F34),
                    color: const Color(0xFFF9AA33),
                    child: Text('Day 3',style: TextStyle(fontSize: 20)),
                    onPressed: () { Navigator.of(context).pushNamed('challenge');},
                  ),
      color: Colors.teal[100],
      
    ),
        Container(
      padding: const EdgeInsets.all(8),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    textColor: const Color(0xFF232F34),
                    color: const Color(0xFFF9AA33),
                    child: Text('Day 4',style: TextStyle(fontSize: 20)),
                    onPressed: () { Navigator.of(context).pushNamed('challenge');},
                  ),
      color: Colors.teal[100],
      
    ),
        Container(
      padding: const EdgeInsets.all(8),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    textColor: const Color(0xFF232F34),
                    color: const Color(0xFFF9AA33),
                    child: Text('Day 5',style: TextStyle(fontSize: 20)),
                    onPressed: () { Navigator.of(context).pushNamed('challenge');},
                  ),
      color: Colors.teal[100],
      
    ),
        Container(
      padding: const EdgeInsets.all(8),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    textColor: const Color(0xFF232F34),
                    color: const Color(0xFFF9AA33),
                    child: Text('Day 6',style: TextStyle(fontSize: 20)),
                    onPressed: () { Navigator.of(context).pushNamed('challenge');},
                  ),
      color: Colors.teal[100],
      
    ),
        Container(
      padding: const EdgeInsets.all(8),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    textColor: const Color(0xFF232F34),
                    color: const Color(0xFFF9AA33),
                    child: Text('Day 7',style: TextStyle(fontSize: 20)),
                    onPressed: () { Navigator.of(context).pushNamed('challenge');},
                  ),
      color: Colors.teal[100],
      
    ),
        Container(
      padding: const EdgeInsets.all(8),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    textColor: const Color(0xFF232F34),
                    color: const Color(0xFFF9AA33),
                    child: Text('Day 8',style: TextStyle(fontSize: 20)),
                    onPressed: () { Navigator.of(context).pushNamed('challenge');},
                  ),
      color: Colors.teal[100],
      
    ),
        Container(
      padding: const EdgeInsets.all(8),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    textColor: const Color(0xFF232F34),
                    color: const Color(0xFFF9AA33),
                    child: Text('Day 9',style: TextStyle(fontSize: 20)),
                    onPressed: () { Navigator.of(context).pushNamed('challenge');},
                  ),
      color: Colors.teal[100],
      
    ),
        Container(
      padding: const EdgeInsets.all(8),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    textColor: const Color(0xFF232F34),
                    color: const Color(0xFFF9AA33),
                    child: Text('Day 10',style: TextStyle(fontSize: 20)),
                    onPressed: () { Navigator.of(context).pushNamed('challenge');},
                  ),
      color: Colors.teal[100],
      
    ),


  ],
)

	),
	);
}
}
