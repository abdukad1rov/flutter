import 'package:flutter/material.dart';

import '../notes.dart';

class Spider_page extends StatelessWidget {
  const Spider_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Человек Паук'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute<void>(builder: (context) => Comics_Page()));
            },
            icon: Icon(Icons.keyboard_arrow_left_sharp)),
      ),
      body: ListView(children: [
        Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                                'assets/images/человек паук.jpg'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: InkWell(
                  onTap: () {},
                  child: Image.asset('assets/images/человек паук_1.jpg')),
            ))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                                'assets/images/человек паук_2.jpg'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                                'assets/images/человек паук_3.jpg'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                                'assets/images/человек паук_4.jpg'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                                'assets/images/человек паук_5.jpg'))))),
          ]),
        ]),
      ]),
    );
  }
}
