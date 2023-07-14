import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:untitled/basket.dart';
import 'package:untitled/regions.dart';

import 'about_us.dart';
import 'data.dart';
import 'discount.dart';

var orders = [];
String nameRegion = 'по Карымской 100 р';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<SliderDrawerState> _key = GlobalKey<SliderDrawerState>();

  var menuItems;
  dynamic res = 0;

  @override
  void initState() {
    super.initState();
    menuItems = (jsonDecode(jsonData) as List);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SliderDrawer(
            key: _key,
            appBar: SliderAppBar(
                appBarColor: Color(0xFF1C1C1E),
                drawerIconColor: Color(0xFFDF5145),
                trailing: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          _settingModalBottomSheet(context);
                        },
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                title: const Text('Меню',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white))),
            slider: Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF1C1C1E),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/bg-menu.jpg'))),
              child: _SliderView(
                onItemClick: (title) {
                  _key.currentState!.closeSlider();
                  setState(() {
                    if (title == 'О нас') {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const AboutUs()),
                      );
                    }
                    if (title == 'Скидки') {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => DiscountPage(
                                  title: 'Скидки',
                                )),
                      );
                    }
                    if (title == 'Акции') {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => DiscountPage(
                                  title: 'Акции',
                                )),
                      );
                    }
                  });
                },
              ),
            ),
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Container(
                    color: const Color(0xFF1C1C1E),
                    height: 210,
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFF202020),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: const BoxDecoration(
                                color: Color(0xFFDF5145),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            alignment: Alignment.center,
                            child: const Text('Доставка',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white)),
                          ),
                          const SizedBox(height: 15),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(
                                MaterialPageRoute(
                                    builder: (context) => const RegionsPage()),
                              )
                                  .then((value) {
                                if (value != null) {
                                  setState(() {
                                    nameRegion = value;
                                  });
                                }
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                  color: Color(0xFF161618),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text('Доставка $nameRegion',
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        burgers(),
                        desert(),
                        dop(),
                        sakuski(),
                        chiness(),
                        napitki(),
                        pizza(),
                        roll(),
                        salat(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          orders.isNotEmpty
              ? GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => BasketPage(
                                items: orders,
                              )),
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
                        'В КОРЗИНЕ ${orders.length} ТОВАР НА  ${calc()} Р.',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }

  calc() {
    res = 0;
    for (var element in orders) {
      var r = element['price'] * element['count'];
      res += r;
    }
    return res;
  }

  burgers() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF1A1A1D),
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        title: Text(menuItems[0]['name'],
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
        ),
        children: [
          ...menuItems[0]['products']!.map((e) {
            return Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFF1A1A1D),
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: Text(e['name'],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
                children: [
                  ...e['products'].map((it) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF1A1A1D),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Image.asset('${it['image']}')),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['name'],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['description'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${it['price']} р.',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFDF5145),
                                    )),
                                if (it['count'] == 0)
                                  TextButton(
                                    onPressed: () {
                                      it['count'] = 1;
                                      orders.add(it);
                                      setState(() {});
                                    },
                                    child: const Text('В КОРЗИНУ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        )),
                                  )
                                else
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.remove),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] -= 1;
                                            if (it['count'] == 0) {
                                              orders.removeWhere(
                                                  (item) => item == it);
                                            }
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        ' ${it['count']}',
                                        style: const TextStyle(
                                            color: Color(0xFFDF5145),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 10),
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.add),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] += 1;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    );
                  })
                ],
              ),
            );
          })
        ],
      ),
    );
  }

  desert() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF1A1A1D),
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        title: Text(menuItems[1]['name'],
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
        ),
        children: [
          ...menuItems[1]['products']!.map((e) {
            return Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFF1A1A1D),
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: Text(e['name'],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
                children: [
                  ...e['products'].map((it) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF1A1A1D),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Image.asset('${it['image']}')),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['name'],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['description'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${it['price']} р.',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFDF5145),
                                    )),
                                if (it['count'] == 0)
                                  TextButton(
                                    onPressed: () {
                                      it['count'] = 1;
                                      orders.add(it);
                                      setState(() {});
                                    },
                                    child: const Text('В КОРЗИНУ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        )),
                                  )
                                else
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.remove),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] -= 1;
                                            if (it['count'] == 0) {
                                              orders.removeWhere(
                                                  (item) => item == it);
                                            }
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        ' ${it['count']}',
                                        style: const TextStyle(
                                            color: Color(0xFFDF5145),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 10),
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.add),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] += 1;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })
                ],
              ),
            );
          })
        ],
      ),
    );
  }

  dop() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF1A1A1D),
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        title: Text(menuItems[2]['name'],
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
        ),
        children: [
          ...menuItems[2]['products']!.map((e) {
            return Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFF1A1A1D),
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: Text(e['name'],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
                children: [
                  ...e['products'].map((it) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF1A1A1D),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Image.asset('${it['image']}')),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['name'],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['description'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${it['price']} р.',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFDF5145),
                                    )),
                                if (it['count'] == 0)
                                  TextButton(
                                    onPressed: () {
                                      it['count'] = 1;
                                      orders.add(it);
                                      setState(() {});
                                    },
                                    child: const Text('В КОРЗИНУ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        )),
                                  )
                                else
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.remove),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] -= 1;
                                            if (it['count'] == 0) {
                                              orders.removeWhere(
                                                  (item) => item == it);
                                            }
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        ' ${it['count']}',
                                        style: const TextStyle(
                                            color: Color(0xFFDF5145),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 10),
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.add),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] += 1;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })
                ],
              ),
            );
          })
        ],
      ),
    );
  }

  sakuski() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF1A1A1D),
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        title: Text(menuItems[3]['name'],
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
        ),
        children: [
          ...menuItems[3]['products']!.map((e) {
            return Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFF1A1A1D),
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: Text(e['name'],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
                children: [
                  ...e['products'].map((it) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF1A1A1D),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Image.asset('${it['image']}')),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['name'],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['description'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${it['price']} р.',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFDF5145),
                                    )),
                                if (it['count'] == 0)
                                  TextButton(
                                    onPressed: () {
                                      it['count'] = 1;
                                      orders.add(it);
                                      setState(() {});
                                    },
                                    child: const Text('В КОРЗИНУ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        )),
                                  )
                                else
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.remove),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] -= 1;
                                            if (it['count'] == 0) {
                                              orders.removeWhere(
                                                  (item) => item == it);
                                            }
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        ' ${it['count']}',
                                        style: const TextStyle(
                                            color: Color(0xFFDF5145),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 10),
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.add),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] += 1;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })
                ],
              ),
            );
          })
        ],
      ),
    );
  }

  chiness() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF1A1A1D),
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        title: Text(menuItems[4]['name'],
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
        ),
        children: [
          ...menuItems[4]['products']!.map((e) {
            return Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFF1A1A1D),
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: Text(e['name'],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
                children: [
                  ...e['products'].map((it) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF1A1A1D),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Image.asset('${it['image']}')),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['name'],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['description'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${it['price']} р.',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFDF5145),
                                    )),
                                if (it['count'] == 0)
                                  TextButton(
                                    onPressed: () {
                                      it['count'] = 1;
                                      orders.add(it);
                                      setState(() {});
                                    },
                                    child: const Text('В КОРЗИНУ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        )),
                                  )
                                else
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.remove),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] -= 1;
                                            if (it['count'] == 0) {
                                              orders.removeWhere(
                                                  (item) => item == it);
                                            }
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        ' ${it['count']}',
                                        style: const TextStyle(
                                            color: Color(0xFFDF5145),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 10),
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.add),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] += 1;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })
                ],
              ),
            );
          })
        ],
      ),
    );
  }

  napitki() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF1A1A1D),
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        title: Text(menuItems[5]['name'],
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
        ),
        children: [
          ...menuItems[5]['products']!.map((e) {
            return Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFF1A1A1D),
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: Text(e['name'],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
                children: [
                  ...e['products'].map((it) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF1A1A1D),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Image.asset('${it['image']}')),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['name'],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['description'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${it['price']} р.',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFDF5145),
                                    )),
                                if (it['count'] == 0)
                                  TextButton(
                                    onPressed: () {
                                      it['count'] = 1;
                                      orders.add(it);
                                      setState(() {});
                                    },
                                    child: const Text('В КОРЗИНУ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        )),
                                  )
                                else
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.remove),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] -= 1;
                                            if (it['count'] == 0) {
                                              orders.removeWhere(
                                                  (item) => item == it);
                                            }
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        ' ${it['count']}',
                                        style: const TextStyle(
                                            color: Color(0xFFDF5145),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 10),
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.add),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] += 1;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })
                ],
              ),
            );
          })
        ],
      ),
    );
  }

  pizza() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF1A1A1D),
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        title: Text(menuItems[6]['name'],
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
        ),
        children: [
          ...menuItems[6]['products']!.map((e) {
            return Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFF1A1A1D),
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: Text(e['name'],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
                children: [
                  ...e['products'].map((it) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF1A1A1D),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Image.asset('${it['image']}')),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['name'],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['description'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${it['price']} р.',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFDF5145),
                                    )),
                                if (it['count'] == 0)
                                  TextButton(
                                    onPressed: () {
                                      it['count'] = 1;
                                      orders.add(it);
                                      setState(() {});
                                    },
                                    child: const Text('В КОРЗИНУ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        )),
                                  )
                                else
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.remove),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] -= 1;
                                            if (it['count'] == 0) {
                                              orders.removeWhere(
                                                  (item) => item == it);
                                            }
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        ' ${it['count']}',
                                        style: const TextStyle(
                                            color: Color(0xFFDF5145),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 10),
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.add),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] += 1;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })
                ],
              ),
            );
          })
        ],
      ),
    );
  }

  roll() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF1A1A1D),
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        title: Text(menuItems[7]['name'],
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
        ),
        children: [
          ...menuItems[7]['products']!.map((e) {
            return Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFF1A1A1D),
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: Text(e['name'],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
                children: [
                  ...e['products'].map((it) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF1A1A1D),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Image.asset('${it['image']}')),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['name'],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['description'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${it['price']} р.',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFDF5145),
                                    )),
                                if (it['count'] == 0)
                                  TextButton(
                                    onPressed: () {
                                      it['count'] = 1;
                                      orders.add(it);
                                      setState(() {});
                                    },
                                    child: const Text('В КОРЗИНУ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        )),
                                  )
                                else
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.remove),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] -= 1;
                                            if (it['count'] == 0) {
                                              orders.removeWhere(
                                                  (item) => item == it);
                                            }
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        ' ${it['count']}',
                                        style: const TextStyle(
                                            color: Color(0xFFDF5145),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 10),
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.add),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] += 1;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })
                ],
              ),
            );
          })
        ],
      ),
    );
  }

  salat() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF1A1A1D),
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        title: Text(menuItems[8]['name'],
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
        ),
        children: [
          ...menuItems[8]['products']!.map((e) {
            return Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFF1A1A1D),
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: Text(e['name'],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
                children: [
                  ...e['products'].map((it) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF1A1A1D),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Image.asset('${it['image']}')),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['name'],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(it['description'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${it['price']} р.',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFDF5145),
                                    )),
                                if (it['count'] == 0)
                                  TextButton(
                                    onPressed: () {
                                      it['count'] = 1;
                                      orders.add(it);
                                      setState(() {});
                                    },
                                    child: const Text('В КОРЗИНУ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        )),
                                  )
                                else
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.remove),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] -= 1;
                                            if (it['count'] == 0) {
                                              orders.removeWhere(
                                                  (item) => item == it);
                                            }
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        ' ${it['count']}',
                                        style: const TextStyle(
                                            color: Color(0xFFDF5145),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 10),
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFDF5145),
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: Icon(Icons.add),
                                          color: Colors.white,
                                          onPressed: () {
                                            it['count'] += 1;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })
                ],
              ),
            );
          })
        ],
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: const Color(0xFF1C1C1E),
        builder: (BuildContext bc) {
          return Container(
            padding: EdgeInsets.all(10),
            height: 200,
            child: Column(
              children: [
                const SizedBox(height: 5),
                const Text(
                  'Информация о доставке',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.timer,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '90 мин.',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          'время доставки',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 14),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.account_balance_wallet_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '500 р.',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          'мин.сумма заказа',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.delivery_dining_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '500 р.',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          'стоим.доставки',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.noise_aware,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'от 1200 р.',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          'бесплат.доставки',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color(0xFFDF5145),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    alignment: Alignment.center,
                    child: const Text('Скрыть',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class _SliderView extends StatelessWidget {
  final Function(String)? onItemClick;

  const _SliderView({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/logo.png',
            height: 150,
            width: 100,
          ),
          ...[
            Menu(Icons.shopify_outlined, 'Акции'),
            Menu(Icons.discount_outlined, 'Скидки'),
            Menu(Icons.menu, 'Меню'),
            Menu(Icons.shopping_basket_outlined, 'Корзина'),
            Menu(Icons.phone,
                '89143591106 \nтел для заявок'),
            Menu(Icons.location_city,
                'пгт.Карымское ул. Верняя 3в'),
          ]
              .map((menu) => _SliderMenuItem(
                  title: menu.title,
                  iconData: menu.iconData,
                  onTap: onItemClick))
              .toList(),
        ],
      ),
    );
  }
}

class _SliderMenuItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function(String)? onTap;

  const _SliderMenuItem(
      {Key? key,
      required this.title,
      required this.iconData,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title,
            style: const TextStyle(
                color: Colors.white, fontFamily: 'BalsamiqSans_Regular')),
        leading: Icon(iconData, color: Colors.white),
        onTap: () => onTap?.call(title));
  }
}

class Menu {
  final IconData iconData;
  final String title;

  Menu(this.iconData, this.title);
}
