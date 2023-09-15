import 'package:http/http.dart' as http;
import 'package:untitled/home.dart';

Future sendOrder(name, phone, desc, street) async {
  var request = http.MultipartRequest(
      'POST', Uri.parse('https://app.frontpad.ru/api/index.php?new_order'));
  var products = [];
  for (var i = 0; i < orders.length; i++) {
    products.add({'product[$i]': '${orders[i]['id']}'});
    products.add({'product_kol[$i]': '${orders[i]['count']}'});
  }
  print(products.join());
  var data = <String, String>{};
  data['secret'] = 'EtabTBzRY245t3ArThSGz47HfKn3TdkizkndQNYAAKsTBR8h2RRiGNTQi8E6aRdA5tEG6k6tZiak49yRQa3hNH22GrSG7Z62dzt8KnsyAsHrs6676YdGt5t3faybZr43Qh2kAdH2zebQa8H6SQD9FZ2QZhSGBHzdShren35K76n7424HDsH8bzN2Gst73R9G3rNbdEQ9A57rRZ2fbzdeTR5n8kiZ5itTB7YFBAF3rBd7i5bnnet8ZkiTAz';
  data['name'] = '$name';
  data['phone'] = '$phone';
  data['street'] = '$street';
  data['descr'] = '$desc';
  for (var i = 0; i < orders.length; i++) {
    data['product[$i]'] = '${orders[i]['id']}';
    data['product_kol[$i]'] = '${orders[i]['count']}';
  }
  print(data);
  request.fields.addAll(data);


  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
    return await response.stream.bytesToString();
  } else {
    return response.reasonPhrase;
  }
}
