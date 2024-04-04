import 'package:flutter/material.dart';

import '../notes.dart';

class Moon_page extends StatelessWidget {
  const Moon_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Лунный Рыцарь'),
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
                                'assets/images/лунный рицар.jpg'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: InkWell(
                  onTap: () {},
                  child: Image.asset('assets/images/лунный рицар_1.jpg')),
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
                                'assets/images/лунный рицар_2.jpg'))))),
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
                                'assets/images/лунный рицар_3.jpg'))))),
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
                                'assets/images/лунный рицар_4.jpg'))))),
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
                                'assets/images/лунный рицар_5.jpg'))))),
          ]),
        ]),
      ]),
    );
  }
}
