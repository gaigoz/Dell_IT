import 'package:http/http.dart' as http;

import 'Address.dart';
//import 'address.dart';
Future<void> main(List<String> arguments) async {
  var uri = Uri.parse("https://viacep.com.br/ws/90619900/json/");
  
  // pode substituir o await pelo conseito usando then
  var response = await http.get(uri);

  print(response.statusCode);
  print("=======");
  print(response.body);

  var a = Address.fromJson(response.body);
  print(a.getValue("cep"));
}