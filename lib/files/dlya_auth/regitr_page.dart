import 'package:flutter/material.dart';

import '../my_drawer_header.dart';
import '../../auth.dart';

class Regist_Page extends StatefulWidget {
  @override
  State<Regist_Page> createState() => _Regist_PageState();
}

class _Regist_PageState extends State<Regist_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/AutWidjet': (context) => AutWidjet(),
          '/MyHeaderDrawer': (context) => MyHeader(),
        },
        home: Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text(
                  'Зарегистрироваться',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute<void>(
                        builder: (context) => AutWidjet()));
                  },
                  icon: Icon(Icons.keyboard_arrow_left_sharp)),
            ),
            body: Container(
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.blue, Colors.white])),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(height: 120),
                    Form_Widjet(),
                  ],
                ),
              ),
            )));
  }
}

class Form_Widjet extends StatefulWidget {
  const Form_Widjet({super.key});

  @override
  State<Form_Widjet> createState() => _Form_WidjetState();
}

class _Form_WidjetState extends State<Form_Widjet> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  bool isHiddenPassword = true;
  bool isHiddenPassword1 = true;

  void _login() {
    // Получите имя пользователя и электронную почту из контроллеров текста и создайте экземпляр пользователя
    var user = User(_nameController as String, _emailController as String);
    // Перейдите на главную страницу, передав экземпляр пользователя через конструктор
    Navigator.pushNamed(context as BuildContext, '/MyHeaderDrawer',
        arguments: user);
  }

  void togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  void togglePasswordView1() {
    setState(() {
      isHiddenPassword1 = !isHiddenPassword1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextField(
          controller: _nameController,
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
              hintText: 'Веведите имя пользователя! ',
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              isCollapsed: true),
          cursorColor: Colors.indigo[900],
        ),
        SizedBox(height: 15),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email_outlined,
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
              hintText: 'Веведите E-mail Address! ',
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              isCollapsed: true),
          cursorColor: Colors.indigo[900],
        ),
        SizedBox(height: 15),
        TextField(
          obscureText: isHiddenPassword,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock_open,
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
            hintText: 'Веведите пароль!',
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
        SizedBox(height: 15),
        TextField(
          obscureText: isHiddenPassword1,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock_open,
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
            hintText: 'Веведите пароль ещё раз!',
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            isCollapsed: true,
            suffix: InkWell(
              onTap: togglePasswordView1,
              child: Icon(
                isHiddenPassword1 ? Icons.visibility_off : Icons.visibility,
                color: Colors.black,
              ),
            ),
          ),
          cursorColor: Colors.indigo[900],
        ),
        SizedBox(height: 55),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute<void>(builder: (context) => AutWidjet()));
            },
            child: Center(
              child: Text(
                'Регистрация',
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 25, color: Colors.grey[700]),
              ),
            ))
      ],
    );
  }
}

class User {
  final String name;
  final String email;

  User(this.name, this.email);
}

// // Класс страницы авторизации
// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();

//   void _login() {
//     // Получите имя пользователя и электронную почту из контроллеров текста и создайте экземпляр пользователя
//     final user = User(_nameController.text, _emailController.text);

//     // Перейдите на главную страницу, передав экземпляр пользователя через конструктор
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => HomePage(user: user),
//       ),
//     );
//   }

//   // ...другой код, включая построение пользовательского интерфейса
// }

// // Класс главной страницы
// class HomePage extends StatelessWidget {
//   final User user;

//   HomePage({required this.user});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Добро пожаловать, ${user.name}'),
//       ),
//       // ...другой код, включая построение пользовательского интерфейса
//     );
//   }
// }