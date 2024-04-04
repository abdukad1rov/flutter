import 'package:flutter/material.dart';

import '../main.dart';
import 'required_files/hulk.dart';
import 'required_files/krik.dart';
import 'required_files/moon.dart';
import 'required_files/spider.dart';

class Comics_Page extends StatelessWidget {
  const Comics_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Comics',
          style: TextStyle(
              color: Colors.grey[500],
              fontSize: 30,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute<void>(builder: (context) => MyApp()));
            },
            icon: Icon(Icons.dehaze_rounded)),
        centerTitle: true,
        backgroundColor: Colors.indigo[900],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.grey, Colors.blue, Colors.red],
        )),
        child: ListView(children: [
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Row(children: [
              Container(
                  child: Expanded(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute<void>(
                                        builder: (context) => Krik_page()));
                              },
                              child: Image.asset('assets/images/крик.jpg'))))),
              Container(
                  child: Expanded(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute<void>(
                                        builder: (context) => Moon_page()));
                              },
                              child: Image.asset(
                                  'assets/images/лунный рицар.jpg'))))),
            ]),
            Row(children: [
              Container(
                  child: Expanded(
                      child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute<void>(
                          builder: (context) => Hulk_page()));
                    },
                    child: Image.asset('assets/images/халк.jpg')),
              ))),
              Container(
                  child: Expanded(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute<void>(
                                        builder: (context) => Spider_page()));
                              },
                              child: Image.asset(
                                  'assets/images/человек паук.jpg'))))),
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
                                  'assets/images/алая ведьма.jpg'))))),
              Container(
                  child: Expanded(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                  'assets/images/рассомаха.jpg'))))),
            ]),
          ]),
        ]),
      ),
    );
  }
}
