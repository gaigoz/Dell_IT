import 'dart:math';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'Address.dart';
//import 'address.dart';
Future<void> main(List<String> arguments) async {
  //var uri = Uri.parse("https://viacep.com.br/ws/90619900/json/");
  var uri = Uri.parse('https://viacep.com.br/ws/rs/porto%20alegre/silva/json/');
  // pode substituir o await pelo conseito usando then
  var response = await http.get(uri);

  print(response.statusCode);
  print("=======");
  print(response.body);

  // var a = Address.fromJson(response.body);
  // print(a.getValue("cep"));

  //var meuEnderecos = <Address>[];
  //List<Address?> meusEnderecos = List<Address?>.filled(1, null,growable: true);
  List<Address?> meusEnderecos = List<Address?>.empty(growable: true);

  var listaDeEnderecos = json.decode(response.body);

  //mostra como String
  //listaDeEnderecos.forEach((e) =>print(e));

  for(Map<String, dynamic> item in listaDeEnderecos) {
    meusEnderecos.add(Address.fromJson(json.encode(item)));
  }

  meusEnderecos.forEach((element) => print(element));
}