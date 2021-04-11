import 'package:tayr/components/drawer.dart';
import '../../model/notification_setting.dart';
import 'package:flutter/material.dart';
import '../../components/drawer.dart';





class DayChallenge extends StatefulWidget {

  @override
  _DayChallengeState createState() => _DayChallengeState();
}

class _DayChallengeState extends State<DayChallenge> {
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
