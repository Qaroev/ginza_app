import 'package:flutter/material.dart';

class RegionsPage extends StatefulWidget {
  const RegionsPage({Key? key}) : super(key: key);

  @override
  State<RegionsPage> createState() => _RegionsPageState();
}

class _RegionsPageState extends State<RegionsPage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xFF1C1C1E),
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
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
            const Text(
              'Районы',
              style: TextStyle(color: Colors.white),
            ),
            const Icon(
              Icons.search,
              size: 30,
              color: Colors.red,
            )
          ],
        ),
      ),
      body: Container(
        color: Color(0xFF1C1C1E),
        height: 300,
        child: Column(
          children: [
            ...regions.map((e) {
              return ListTile(
                onTap: (){
                  Navigator.of(context).pop(e['name']);
                },
                leading: Icon(
                  Icons.map,
                  color: Colors.grey,
                ),
                title: Text(
                  '${e['name']}',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      '${e['startTime']} - ${e['endTime']} , ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Text(
                      'Доставляем',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
