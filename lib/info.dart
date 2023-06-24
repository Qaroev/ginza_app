import 'package:flutter/material.dart';
import 'package:untitled/home.dart';

import 'appservice.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController comment = TextEditingController();

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
                'Информация',
                style: TextStyle(color: Colors.white),
              ),
              Container()
            ],
          ),
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(children: [
              Expanded(
                  child: Form(
                key: _formKey,
                child: ListView(
                  padding: const EdgeInsets.all(8.0),
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                          controller: name,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            labelText: "Имя",
                            hintStyle: TextStyle(color: Colors.white),
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: "Имя",
                          ),
                        )),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                          controller: phone,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            labelText: "Телефон",
                            hintStyle: TextStyle(color: Colors.white),
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: "Телефон",
                          ),
                        )),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                          controller: address,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            labelText: "Адрес доставка",
                            hintStyle: TextStyle(color: Colors.white),
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: "Имя",
                          ),
                        )),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                          controller: comment,
                          style: const TextStyle(fontSize: 20.0, color: Colors.white),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            labelText: "Комментарий",
                            hintStyle: TextStyle(color: Colors.white),
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: "Комментарий",
                          ),
                        )),
                  ],
                ),
              ))
            ]),
            GestureDetector(
              onTap: () {
                sendOrder(name.text, phone.text, address.text, comment.text);
                orders = [];
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 40.0, left: 15, right: 15),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    'ОТПРАВИТЬ ЗАКАЗ',
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
        ));
  }
}
