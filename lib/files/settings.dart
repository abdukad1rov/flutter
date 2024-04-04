import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _value = false;
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
  bool _value6 = false;
  bool _value7 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.black, Colors.grey],
      )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Не загружат картинки',
                  style: TextStyle(color: Colors.white, fontSize: 19)),
              Switch(
                value: _value,
                onChanged: (bool newValue) {
                  setState(() {
                    _value = newValue;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Рейтинг в постерах',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              Switch(
                value: _value1,
                onChanged: (bool newValue) {
                  setState(() {
                    _value1 = newValue;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'История поиска',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              Switch(
                value: _value2,
                onChanged: (bool newValue) {
                  setState(() {
                    _value2 = newValue;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Тема оформления',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              Switch(
                value: _value3,
                onChanged: (bool newValue) {
                  setState(() {
                    _value3 = newValue;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Показывать уведомления',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              Switch(
                value: _value4,
                onChanged: (bool newValue) {
                  setState(() {
                    _value4 = newValue;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Отключить рекламу ',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              Switch(
                value: _value5,
                onChanged: (bool newValue) {
                  setState(() {
                    _value5 = newValue;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Синхронизация',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              Switch(
                value: _value6,
                onChanged: (bool newValue) {
                  setState(() {
                    _value6 = newValue;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Режим оффлайн',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              Switch(
                value: _value7,
                onChanged: (bool newValue) {
                  setState(() {
                    _value7 = newValue;
                  });
                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
