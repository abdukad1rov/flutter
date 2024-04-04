import 'package:flutter/material.dart';

import 'files/Characters.dart';
import 'files/comics_page.dart';
import 'files/dashboard.dart';
import 'auth.dart';
import 'files/my_drawer_header.dart';
import 'files/events.dart';
import 'files/notes.dart';
import 'files/notifications.dart';

import 'files/send_feedback.dart';
import 'files/settings.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/AutWidjet': (context) => AutWidjet(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Container Example',
        home: DefaultTabController(
          length: 3,
          child: ContainerExample(),
        ));
  }
}

class ContainerExample extends StatefulWidget {
  @override
  _ContainerExampleState createState() => _ContainerExampleState();
}

class _ContainerExampleState extends State<ContainerExample> {
  var currentPage = DrawerSections.dashboard;
  @override
  Widget build(BuildContext context) {
    late Widget container;
    if (currentPage == DrawerSections.dashboard) {
      container = NewsPage();
    } else if (currentPage == DrawerSections.contacts) {
      container = CharactersPage();
    } else if (currentPage == DrawerSections.events) {
      container = EventsPage();
    } else if (currentPage == DrawerSections.notes) {
      container = Comics_Page();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = NotificationsPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = PrivacyPolicyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = SendFeedbackPage();
    }
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          actions: [
            SizedBox(width: 20),
            IconButton(
                padding: EdgeInsets.only(left: 35),
                iconSize: 30,
                onPressed: () {
                  final navigator = Navigator.of(context);
                  navigator.push(MaterialPageRoute<void>(
                      builder: (context) => AutWidjet()));
                },
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ))
          ],
          centerTitle: true,
        ),
        body: container,
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  MyHeaderDrawer(),
                  MyDrawerList(),
                ],
              ),
            ),
          ),
        ));
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          menuItem(1, 'Новости', Icons.home,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, 'Персонажи', Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(4, 'Комиксы', Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          Divider(),
          menuItem(5, 'Настройка', Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          Divider(),
          menuItem(8, 'О приложении', Icons.info_outline,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}
