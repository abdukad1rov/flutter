import 'package:flutter/material.dart';

class News_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Column(children: [
              SizedBox(height: 5),
              Image(
                image: NetworkImage(
                    'https://cdn.shazoo.ru/c1200x525/686467_vpQZvVw_screenshot-1.jpg'),
                fit: BoxFit.cover,
              ),
              Text(
                'Из "Войны бесконечности" вырезали 45-минутную сцену с Таносом и получением Камня силы',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Divider(),
              Text(
                  'В фильме "Мстители: Война бесконечности" на момент начала у Таноса уже был один Камень Бесконечности — камень силы. Он получил его после атаки на планету Ксандар. Этого фрагмента в ленте нам не показали, хотя изначально...'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '19:00, 15 апреля 2023',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              )
            ]),
            Column(children: [
              SizedBox(height: 5),
              Image(
                image: NetworkImage(
                    'https://cdn.shazoo.ru/c1200x525/686352_7DVzBVP_screenshot-3.jpg'),
                fit: BoxFit.cover,
              ),
              Text(
                'Джеймс Ганн не против, чтобы членов Стражей Галактики использовали после третьего фильма',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Divider(),
              Text(
                  'Фильм "Стражи Галактики 3" завершит историю привычной нам команды. После этой ленты кто-то из знакомых героев либо погибнет, либо уйдет из команды иным способом. Больше всего ставят на смерть Ракеты и Дракса. Несмотря на это,...'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '21:00, 14 апреля 2023',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              )
            ]),
            Column(children: [
              SizedBox(height: 5),
              Image(
                image: NetworkImage(
                    'https://cdn.shazoo.ru/c1200x525/684896_x4eODeU_screenshot-7.jpg'),
                fit: BoxFit.cover,
              ),
              Text(
                'Джеймс Ганн: Кроссовер Marvel и DC уже обсуждался',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Divider(),
              Text(
                  'Джеймс Ганн в интервью изданию Empire рассказал, что разговоры о потенциальном кроссовере Marvel и DC уже были. Но прежде чем устраивать что-то подобное, Ганну нужно построить новую киновселенную DC. Как отметил Джеймс, серьезно этот вопрос...'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '12:40, 7 апреля 2023',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              )
            ]),
            Column(children: [
              SizedBox(height: 5),
              Image(
                image: NetworkImage(
                    'https://cdn.shazoo.ru/c1200x525/686310_iS79McG_guardians.jpg'),
                fit: BoxFit.cover,
              ),
              Text(
                '"Стражам галактики 3" прогнозируют меньшие сборы на старте, чем у второй части',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Divider(),
              Text(
                  'Издание Deadline опубликовало прогноз сборов "Стражей галактики 3" в США в стартовые выходные. Издание считает, что картины соберет несколько меньше, чем вторая часть приключений команды: 130 млн доллор против 146.5 млн доллор соответственно. Издание отдельно отметило, что...'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '11:20, 7 апреля 2023',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              )
            ]),
            Column(children: [
              SizedBox(height: 5),
              Image(
                image: NetworkImage(
                    'https://cdn.shazoo.ru/c1200x525/684677_wJx4jsz_spider-man.jpg'),
                fit: BoxFit.cover,
              ),
              Text(
                'Второй трейлер сиквела "Человек-паук: Через вселенные" за сутки собрал суммарно свыше 148 млн просмотров',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Divider(),
              Text(
                  'Зарубежные СМИ рассказали, что второй трейлер сиквела "Человек-паук: Через вселенные" за сутки собрал суммарно на всех площадках свыше 148.6 млн просмотров. Это рекордные цифры не только для франшизы Spider-Verse, но и среди всех вторых трейлеров...'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '14:40, 6 апреля 2023',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              )
            ]),
            Column(children: [
              SizedBox(height: 5),
              Image(
                image: NetworkImage(
                    'https://cdn.shazoo.ru/c1200x525/681487_0HoaIzd_the-avengers-vs-justice-league-7s.jpg'),
                fit: BoxFit.cover,
              ),
              Text(
                '"Лига справедливости" Зака Снайдера обошла "Мстителей: Финал" в опросе от Эда Буна',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Divider(),
              Text(
                  'Создатель франшизы Mortal Kombat Эд Бун любит проводить опросы в своем твиттере. Недавно он поинтересовался у подписчиков, какой фильм они считают лучшим: "Лигу справедливости" Зака Снайдера или же "Мстителей: Войну бесконечности Финал". В опросе приняло...'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '14:40, 22 марта 2023',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              )
            ]),
            Column(children: [
              SizedBox(height: 5),
              Image(
                image: NetworkImage(
                    'https://cdn.shazoo.ru/c1200x525/675909_elkRr6O_tom-hardi-gladit-simbiota-sony-pokazala-zabavnoe-foto-so-semok-venoma-2-81327.jpg'),
                fit: BoxFit.cover,
              ),
              Text(
                'Том Харди: "Веном 3" уже на стадии пре-продакшена',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Divider(),
              Text(
                  'Том Харди опубликовал в своих социальных сетях ролик, на котором он смотрит сцену из первого "Венома". В описании видео актер указал, что занимается он этим "во время работы над пре-продакшеном триквела". Такая новость может означать,...'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '22:00, 23 февраля 2023',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              )
            ]),
            Column(children: [
              SizedBox(height: 5),
              Image(
                image: NetworkImage(
                    'https://cdn.shazoo.ru/c1200x525/673196_VIjLFUk_spider-man-noire.jpg'),
                fit: BoxFit.cover,
              ),
              Text(
                'СМИ: Amazon работает над сериалом про нуарного Человека-паука — в отдельной вселенной и без Питера Паркера',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Divider(),
              Text(
                  'Источники издания Variety рассказали, что Amazon запустил в производство сериал с живыми актерами про Человека-паука Нуар. Публика помнит его по мультфильму "Человек-паук: Через вселенные", где героя озвучил Николас Кейдж. Шоу поведает об уже постаревшем и...'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '20:15, 9 февраля 2023',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              )
            ]),
          ],
        ),
      )

          // Container(
          //   decoration: BoxDecoration(
          //       gradient: LinearGradient(colors: [Colors.blue, Colors.white])),
          //   child: Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       children: [
          //         Text('privet'),
          //         Row(
          //           children: [
          //             Container(
          //               decoration: BoxDecoration(
          //                   image: DecorationImage(
          //                       image: NetworkImage(
          //                           'https://i.pinimg.com/736x/77/19/9f/77199fc282ac6e1d9e48a90f0636fa4e.jpg'),
          //                       fit: BoxFit.cover)),
          //               child: Text('spider man'),
          //             ),
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
