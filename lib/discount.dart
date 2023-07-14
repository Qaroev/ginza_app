import 'package:flutter/material.dart';

class DiscountPage extends StatefulWidget {
  String? title;

  DiscountPage({Key? key, this.title}) : super(key: key);

  @override
  State<DiscountPage> createState() => _DiscountPageState();
}

class _DiscountPageState extends State<DiscountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1C1C1E),
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFFDF5145),
                  ),
                  Text(
                    'Назад',
                    style: TextStyle(color: Color(0xFFDF5145)),
                  )
                ],
              ),
            ),
            Text(
              widget.title ?? '',
              style: const TextStyle(color: Colors.white),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
