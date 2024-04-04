import 'package:flutter/material.dart';
import 'dlya_auth/regitr_page.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/Regist_Page': (context) => Regist_Page(),
        '/MyHeader': (context) => MyHeader(),
      },
      home: MyHeaderDrawer(),
    );
  }
}

class MyHeaderDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo[900],
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   margin: EdgeInsets.only(bottom: 10),
          //   height: 70,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     image: DecorationImage(
          //       image: NetworkImage(
          //           'https://avatars.mds.yandex.net/get-yapic/58107/ciJm16iRgwjS1CQoMv27OS6UI-1/islands-retina-small'),
          //     ),
          //   ),
          // ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            radius: 40,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_a_photo_outlined),
              color: Colors.white,
            ),
          ),
          SizedBox(height: 15),
          Text(
            'farhad',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            'farhadabdukadirov03@gmail.com',
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
