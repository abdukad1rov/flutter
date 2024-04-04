import 'package:flutter/material.dart';

import 'required_files/info.dart';

class CharactersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return App2();
  }
}

class App2 extends StatefulWidget {
  @override
  State<App2> createState() => _App2State();
}

class _App2State extends State<App2> {
  bool _darkMode1 = false;

  void _toggleDarkMode() {
    setState(() {
      _darkMode1 = !_darkMode1;
    });
  }
  // List<Hero> heroes = [];

  // final nameController = TextEditingController();
  // final aliasController = TextEditingController();
  Hero? selectedHero;

  // List<Hero> heroes = [
  //   Hero('Batman', 'The Dark Knight', 'Bruce Wayne'),
  //   Hero('Superman', 'Man of Steel', 'Clark Kent'),
  //   Hero('Spiderman', 'Web-Slinger', 'Peter Parker'),
  // ];

  @override
  Widget build(BuildContext context) {
    final lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.lightBlue,
    );

    final darkTheme = ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.grey,
    );

    final theme = _darkMode1 ? darkTheme : lightTheme;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        home: Scaffold(
          appBar: AppBar(
            // actions: [
            //   Switch(
            //     value: _darkMode1,
            //     onChanged: (value) {
            //       _toggleDarkMode();
            //     },
            //   ),
            // ],
            centerTitle: true,
            backgroundColor: Colors.indigo[900],
            title: Text(
              'Персонажи                                           ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.black, Colors.grey],
            )),
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: SizedBox(
                    width: 45,
                    height: 65,
                    child: Expanded(
                      child: Image(
                          image: NetworkImage(
                              'https://avatars.mds.yandex.net/i?id=010e75ae3231c97ab407b99e88de2b22-5166633-images-thumbs&n=13')),
                    ),
                  ),
                  title: Text('Капитан Америка',
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text('Стив Роджерс',
                      style: TextStyle(color: Colors.white)),
                  trailing: InkWell(
                    child: Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(228, 221, 219, 1),
                    ),
                    onTap: () {
                      showModalBottomSheet<Future>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Cap()),
                            );
                          });
                    },
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 45,
                    height: 65,
                    child: Expanded(
                      child: Image(
                          image: NetworkImage(
                              'https://i.pinimg.com/originals/29/ea/ea/29eaea8a67bef2cb92164ef46fcd570f.jpg')),
                    ),
                  ),
                  title: Text(
                    'Человек Паук',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text('Питер Паркер',
                      style: TextStyle(color: Colors.white)),
                  trailing: InkWell(
                    child: Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(228, 221, 219, 1),
                    ),
                    onTap: () {
                      showModalBottomSheet<Future>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Spider()),
                            );
                          });
                    },
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 45,
                    height: 65,
                    child: Expanded(
                      child: Image(
                          image: NetworkImage(
                              'https://avatars.mds.yandex.net/i?id=ecd80d6e6323613195adcf05963bdc2cb25f5632-8312133-images-thumbs&n=13')),
                    ),
                  ),
                  title: Text('Железный Человек',
                      style: TextStyle(color: Colors.white)),
                  subtitle:
                      Text('Тони Старк', style: TextStyle(color: Colors.white)),
                  trailing: InkWell(
                    child: Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(228, 221, 219, 1),
                    ),
                    onTap: () {
                      showModalBottomSheet<Future>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Iron()),
                            );
                          });
                    },
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 45,
                    height: 65,
                    child: Expanded(
                      child: Image(
                          image: NetworkImage(
                              'https://avatars.mds.yandex.net/i?id=c974e5415abfbf79affc566fbf1c0761-5233993-images-thumbs&ref=rim&n=33&w=150&h=188')),
                    ),
                  ),
                  title: Text('Тор', style: TextStyle(color: Colors.white)),
                  subtitle:
                      Text('Сын Одина', style: TextStyle(color: Colors.white)),
                  trailing: InkWell(
                    child: Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(228, 221, 219, 1),
                    ),
                    onTap: () {
                      showModalBottomSheet<Future>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: TOR()),
                            );
                          });
                    },
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 45,
                    height: 65,
                    child: Expanded(
                      child: Image(
                          image: NetworkImage(
                              'https://avatars.mds.yandex.net/i?id=e8385678099cef04af59912d683f0d605149a5c2-6917316-images-thumbs&ref=rim&n=33&w=188&h=188')),
                    ),
                  ),
                  title:
                      Text('Магнетто', style: TextStyle(color: Colors.white)),
                  subtitle: Text(''),
                  trailing: InkWell(
                    child: Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(228, 221, 219, 1),
                    ),
                    onTap: () {
                      showModalBottomSheet<Future>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: MAGNETTO()),
                            );
                          });
                    },
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 45,
                    height: 65,
                    child: Expanded(
                      child: Image(
                          image: NetworkImage(
                              'https://nakleikashop.ru/images/thumbnails/190/190/detailed/57/Art-104.png')),
                    ),
                  ),
                  title: Text('Звёздный Лорд',
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text(''),
                  trailing: InkWell(
                    child: Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(228, 221, 219, 1),
                    ),
                    onTap: () {
                      showModalBottomSheet<Future>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Lord()),
                            );
                          });
                    },
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 45,
                    height: 65,
                    child: Expanded(
                      child: Image(
                          image: NetworkImage(
                              'https://nakleikashop.ru/images/thumbnails/190/190/detailed/57/Art-210.png')),
                    ),
                  ),
                  title: Text('Доктор Стрейндж',
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text(''),
                  trailing: InkWell(
                    child: Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(228, 221, 219, 1),
                    ),
                    onTap: () {
                      showModalBottomSheet<Future>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: DOC()),
                            );
                          });
                    },
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 45,
                    height: 65,
                    child: Expanded(
                      child: Image(
                          image: NetworkImage(
                              'https://nakleikashop.ru/images/thumbnails/190/190/detailed/57/Art-213.png')),
                    ),
                  ),
                  title: Text('Капитан Марвел',
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text(''),
                  trailing: InkWell(
                    child: Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(228, 221, 219, 1),
                    ),
                    onTap: () {
                      showModalBottomSheet<Future>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Cap_Marvel()),
                            );
                          });
                    },
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 45,
                    height: 65,
                    child: Expanded(
                      child: Image(
                          image: NetworkImage(
                              'https://nakleikashop.ru/images/thumbnails/190/190/detailed/57/Art-184.png')),
                    ),
                  ),
                  title: Text('Черная Пантера',
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text(''),
                  trailing: InkWell(
                    child: Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(228, 221, 219, 1),
                    ),
                    onTap: () {
                      showModalBottomSheet<Future>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Pantera()),
                            );
                          });
                    },
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 45,
                    height: 65,
                    child: Expanded(
                      child: Image(
                          image: NetworkImage(
                              'https://nakleikashop.ru/images/thumbnails/190/190/detailed/57/Art-148.png')),
                    ),
                  ),
                  title: Text('Танос', style: TextStyle(color: Colors.white)),
                  subtitle: Text(''),
                  trailing: InkWell(
                    child: Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(228, 221, 219, 1),
                    ),
                    onTap: () {
                      showModalBottomSheet<Future>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Tanos()),
                            );
                          });
                    },
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 45,
                    height: 65,
                    child: Expanded(
                      child: Image(
                          image: NetworkImage(
                              'https://nakleikashop.ru/images/thumbnails/190/190/detailed/57/Art-134.png')),
                    ),
                  ),
                  title:
                      Text('Рассомаха', style: TextStyle(color: Colors.white)),
                  subtitle: Text(''),
                  trailing: InkWell(
                    child: Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(228, 221, 219, 1),
                    ),
                    onTap: () {
                      showModalBottomSheet<Future>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Rassamaha()),
                            );
                          });
                    },
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 45,
                    height: 65,
                    child: Expanded(
                      child: Image(
                          image: NetworkImage(
                              'https://nakleikashop.ru/images/thumbnails/190/190/detailed/57/Art-138.png')),
                    ),
                  ),
                  title: Text('Веном', style: TextStyle(color: Colors.white)),
                  subtitle: Text(''),
                  trailing: InkWell(
                    child: Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(228, 221, 219, 1),
                    ),
                    onTap: () {
                      showModalBottomSheet<Future>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Venom()),
                            );
                          });
                    },
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 45,
                    height: 65,
                    child: Expanded(
                      child: Image(
                          image: NetworkImage(
                              'https://nakleikashop.ru/images/thumbnails/190/190/detailed/57/Art-202.png')),
                    ),
                  ),
                  title: Text('Чёрная Вдова',
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text(''),
                  trailing: InkWell(
                    child: Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(228, 221, 219, 1),
                    ),
                    onTap: () {
                      showModalBottomSheet<Future>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Natasha()),
                            );
                          });
                    },
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 45,
                    height: 65,
                    child: Expanded(
                      child: Image(
                          image: NetworkImage(
                              'https://nakleikashop.ru/images/thumbnails/190/190/detailed/57/Art-123.png')),
                    ),
                  ),
                  title: Text('Дедпул', style: TextStyle(color: Colors.white)),
                  subtitle: Text(''),
                  trailing: InkWell(
                    child: Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(228, 221, 219, 1),
                    ),
                    onTap: () {
                      showModalBottomSheet<Future>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Dedpul()),
                            );
                          });
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Hero {
  String name;
  String alias;
  String description;

  Hero(this.name, this.alias, this.description);
}
