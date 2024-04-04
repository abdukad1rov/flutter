import 'package:flutter/material.dart';

import '../notes.dart';

class Hulk_page extends StatelessWidget {
  const Hulk_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Халк'),
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
                            child: Image.asset('assets/images/халк.jpg'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: InkWell(
                  onTap: () {}, child: Image.asset('assets/images/халк_2.PNG')),
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
                            child: Image.asset('assets/images/халк_3.PNG'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/халк_4.PNG'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/халк_5.PNG'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/халк_6.PNG'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/халк_7.PNG'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/халк_8.PNG'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/халк_9.PNG'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/халк_10.PNG'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/халк_11.PNG'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/халк_1.PNG'))))),
          ]),
        ]),
      ]),
    );
  }
}
