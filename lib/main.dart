import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Homework2(),
    );
  }
}

//-----------------------Homework1------------------------------------------

class Homework1 extends StatefulWidget {
  const Homework1({super.key});

  @override
  State<Homework1> createState() => _Homework1State();
}

class _Homework1State extends State<Homework1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xffF2F2F2),
        leading: Icon(
          Icons.arrow_back,
          size: 30,
          color: Color(0xff2C2C2C),
        ),
        title: Text(
          'Добавить шаблон',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xff262626),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              size: 30,
              color: Color(0xff303030),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        'Терминалы',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff262626),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffF1229E),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Офисы',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                CommonCard(
                  title: 'ЦПО Бишкек Парк',
                  adress: 'пр. Чуй 123, первый этаж',
                ),
                CommonCard(
                  title: 'ОАО "Капитал Банк',
                  adress: 'ул. Московская 161',
                ),
                CommonCard(
                  title: 'Международный аэропорт Манас',
                  adress: 'Васильевский тракт, 105',
                ),
                CommonCard(
                  title: 'Asia Mall',
                  adress: 'пр. Чынгыза Айтматова, 3',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CommonCard extends StatefulWidget {
  final String title;
  final String adress;

  CommonCard({
    required this.title,
    required this.adress,
  });

  @override
  _CommonCardState createState() => _CommonCardState();
}

class _CommonCardState extends State<CommonCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      height: 70,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/geodannye.png',
            width: 24,
            height: 32,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff4F4F4F),
                ),
              ),
              Text(
                widget.adress,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4F4F4F),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//-----------------------Homework2------------------------------------------

class Homework2 extends StatefulWidget {
  const Homework2({super.key});

  @override
  State<Homework2> createState() => _Homework2State();
}

class _Homework2State extends State<Homework2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      appBar: AppBar(
        backgroundColor: Color(0xffFBFBFB),
        leading: Icon(
          Icons.arrow_back_ios,
          size: 25,
          color: Color(0xff000000),
        ),
        title: Text(
          'Корзина',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xff000000),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset(
                'assets/images/trash.png',
                width: 22,
                height: 25,
              )),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 30, 16, 11),
            child: Expanded(
              flex: 12,
              child: SizedBox(
                height: 570,
                child: ListView(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 15, 40, 15),
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff000000).withOpacity(0.04),
                            offset: Offset(0, 2),
                            blurRadius: 15,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/sushi_1.png',
                            height: 65,
                            width: 80,
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Сет #1',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000),
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                '770 г.',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000).withOpacity(0.5),
                                ),
                              ),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xffDDDDDD),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Icon(
                                      Icons.remove,
                                      color: Color(0xffFFFFFF),
                                      size: 23,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff000000).withOpacity(0.5),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xff61CF00),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xffFFFFFF),
                                      size: 23,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    '27.00 BYN',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 15, 40, 15),
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff000000).withOpacity(0.04),
                            offset: Offset(0, 2),
                            blurRadius: 15,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/sushi_2.png',
                            height: 65,
                            width: 80,
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Сет #2',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000),
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                '770 г.',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000).withOpacity(0.5),
                                ),
                              ),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xffDDDDDD),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Icon(
                                      Icons.remove,
                                      color: Color(0xffFFFFFF),
                                      size: 23,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff000000).withOpacity(0.5),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xff61CF00),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xffFFFFFF),
                                      size: 23,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    '30.00 BYN',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(18),
              height: 82,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff0A191E).withOpacity(0.78),
                    offset: Offset(0, 3),
                    blurRadius: 60,
                  ),
                ],
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xff61CF00),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000).withOpacity(0.06),
                      offset: Offset(3, 9),
                      blurRadius: 17,
                    ),
                  ],
                ),
                child: Text(
                  'ОФОРМИТЬ ЗАКАЗ НА 16.00 BYN',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
