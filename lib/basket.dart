import 'package:flutter/material.dart';
import 'package:untitled/home.dart';

import 'info.dart';

class BasketPage extends StatefulWidget {
  final List<dynamic>? items;

  const BasketPage({Key? key, this.items}) : super(key: key);

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1C1E),
      appBar: AppBar(
        backgroundColor: Color(0xFF1C1C1E),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Color(0xFFDF5145),
              ),
            ),
            const Text(
              'Корзина',
              style: TextStyle(color: Colors.white),
            ),
            const Icon(
              Icons.delete,
              color: Color(0xFFDF5145),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: widget.items!.isNotEmpty
            ? Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ListView(
                    children: [
                      ...widget.items!.map((e) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 80,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        e['image'],
                                        fit: BoxFit.fill,
                                        width: 100,
                                        height: 100,
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['name'],
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            'Итого:  ${clc(e)} р.',
                                            style: const TextStyle(
                                              color: Color(0xFFDF5145),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFFDF5145),
                                        radius: 10,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(
                                            Icons.remove,
                                            size: 20,
                                          ),
                                          color: Colors.white,
                                          onPressed: () {
                                            e['count'] -= 1;
                                            if (e['count'] == 0) {
                                              widget.items!.removeWhere(
                                                  (item) => item == e);
                                            }
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      Text(
                                        '${e['count']}', //
                                        style: const TextStyle(
                                            color: Color(0xFFDF5145),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFDF5145),
                                        radius: 10,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(
                                            Icons.add,
                                            size: 15,
                                          ),
                                          color: Colors.white,
                                          onPressed: () {
                                            e['count'] += 1;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        );
                      }),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Сумма заказа:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '${calc()} р.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Доставка:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Бесплатно ${calcDos()}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'К оплате:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${calc()} р.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 150),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const InfoPage()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 40.0, left: 15, right: 15),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          'ОФОРМИТ ЗАКАЗ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            : Container(),
      ),
    );
  }

  calcDos() {
    var regions = [
      {
        "name": "ПО КАРЫМСКОЙ 100 р",
        "startTime": "11:00",
        "endTime": "22:30",
      },
      {
        "name": "ДО КАРЬЕРА 200р",
        "startTime": "11:00",
        "endTime": "22:30",
      },
      {
        "name": "ДО ИНГОДЫ 250р",
        "startTime": "11:00",
        "endTime": "22:30",
      },
      {
        "name": "ДО КАДАХТЫ 250р",
        "startTime": "11:00",
        "endTime": "22:30",
      }
    ];
    var price = [100, 200, 250, 250];
    var index = 0;
    for (var element in regions) {
      if (element['name'] == nameRegion) {
        index = regions.indexOf(element);
      }
    }
    return price[index];
  }

  clc(e) {
    return e['count'] * e['price'];
  }

  calc() {
    dynamic res = 0;
    for (var element in widget.items!) {
      var r = element['price'] * element['count'];
      res += r;
    }
    return res + calcDos();
  }
}
