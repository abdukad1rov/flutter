import 'package:flutter/material.dart';

import '../notes.dart';

class Krik_page extends StatelessWidget {
  const Krik_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Крик'),
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
                            child: Image.asset('assets/images/крик.jpg'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: InkWell(
                  onTap: () {}, child: Image.asset('assets/images/крик_1.jpg')),
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
                            child: Image.asset('assets/images/крик_2.jpg'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/крик_3.jpg'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/крик_4.jpg'))))),
          ]),
          Row(children: [
            Container(
                child: Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/крик_5.jpg'))))),
          ]),
        ]),
      ]),
    );
  }
}
