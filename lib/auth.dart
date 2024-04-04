import 'package:flutter/material.dart';

import 'main.dart';
import 'files/dlya_auth/regitr_page.dart';

void main() => runApp(AutWidjet());

class AutWidjet extends StatefulWidget {
  const AutWidjet({super.key});

  @override
  State<AutWidjet> createState() => _AutWidjetState();
}

class _AutWidjetState extends State<AutWidjet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/Regist_Page': (context) => Regist_Page(),
        '/MyApp': (context) => MyApp(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.white])),
          child: _HeaderWidjet(),
        ),
      ),
    );
  }
}

class _HeaderWidjet extends StatelessWidget {
  const _HeaderWidjet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 25,
          ),
          Text(
            'Добро пожаловать',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 150,
          ),
          formWidjet(),
        ],
      ),
    );
  }
}

class formWidjet extends StatefulWidget {
  const formWidjet({super.key});

  @override
  State<formWidjet> createState() => _formWidjetState();
}

class _formWidjetState extends State<formWidjet> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText;
  bool isHiddenPassword = true;

  void togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'farhad' && password == '030403') {
      errorText = null;
      final navigator = Navigator.of(context);
      navigator.push(MaterialPageRoute<void>(builder: (context) => MyApp()));
    } else {
      errorText = 'Не верный логин или пароль';
    }
    setState(() {});
  }

  void _resetPassword() {
    Navigator.of(context)
        .push(MaterialPageRoute<void>(builder: (context) => Regist_Page()));
  }

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(
            errorText,
            style: TextStyle(color: Colors.red, fontSize: 17),
          ),
          SizedBox(
            height: 20,
          ),
        ],
        Text('Username'),
        SizedBox(height: 5),
        TextField(
          controller: _loginTextController,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide:
                    BorderSide(color: Colors.indigo.shade700, width: 2.0),
              ),
              suffixIcon: Icon(
                Icons.delete_outline,
                color: Colors.red,
              ),
              hintText: 'Anton',
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              isCollapsed: true),
          cursorColor: Colors.indigo[900],
        ),
        SizedBox(
          height: 10,
        ),
        Text('Password'),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: _passwordTextController,
          obscureText: isHiddenPassword,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.black,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(color: Colors.indigo.shade700, width: 2.0),
            ),
            suffixIcon: Icon(
              Icons.delete_outline,
              color: Colors.red,
            ),
            hintText: '123456',
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            isCollapsed: true,
            suffix: InkWell(
              onTap: togglePasswordView,
              child: Icon(
                isHiddenPassword ? Icons.visibility_off : Icons.visibility,
                color: Colors.black,
              ),
            ),
          ),
          cursorColor: Colors.indigo[900],
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute<void>(
                          builder: (context) => MyApp()));
                    },
                    child: Text(
                      'Вход',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )),
                CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  radius: 35,
                  child: IconButton(
                    onPressed: _auth,
                    icon: Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: _resetPassword,
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStatePropertyAll(Color(0xFF01B4E4)),
                        textStyle: MaterialStatePropertyAll(TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400))),
                    child: Text(
                      'Регистрация',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    )),
                Text(
                  'Забыли  пароль ?',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
