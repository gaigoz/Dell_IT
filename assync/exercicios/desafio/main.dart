import 'package:http/http.dart' as http;
import 'dart:convert';
import 'User.dart';

Future<void> main() async {
  var uri = Uri.parse('https://jsonplaceholder.typicode.com/users');
  var response = await http.get(uri);

  print(response.statusCode);

  User userFromJson(String str) => User.fromJson(json.decode(str));
  //type 'List<dynamic>' is not a subtype of type 'Map<String, dynamic>'
  //print(userFromJson(response.body));

  var listaDeEnderecos = json.decode(response.body);
  var teste = userFromJson(listaDeEnderecos);
  //type 'List<dynamic>' is not a subtype of type 'String'
  //print(teste);

  //type 'List<dynamic>' is not a subtype of type 'String'
  //listaDeEnderecos.forEach((e) =>print(e));

  //type 'List<dynamic>' is not a subtype of type 'String'
  var meusEnderecos = List<User?>.empty(growable: true);
  var lista = json.decode(response.body);
  for(Map<String, dynamic> item in listaDeEnderecos) {
    meusEnderecos.add(User.fromJson(lista));
  }
  meusEnderecos.forEach((element) => print(element));
}