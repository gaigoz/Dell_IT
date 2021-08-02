import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> main() async {
  //link para fazer o post
  var url = "https://jsonplaceholder.typicode.com/posts";
  var minhaURI = Uri.parse(url);

  var bodyObject = {
    "userId": "1234",
    "id": "1010",
    "title": "um titulo bonito",
    "body": "110kg"
  };
  //converte para o json textual
  var bodyStr = json.encode(bodyObject);
  //espera a promessa
  var response = await http.post(minhaURI,
      headers: {'Content-type': 'application/json; charset=UTF-8'},
      body: bodyStr);

  //var response = await http.get(minhaURI);
  print(response.statusCode);
  print("===========");
  print(response.body);
  print("===========");
  print(response.headers);
  print("===========");
  print(response.toString());
  print("===========");
  print(response.request);
}

//aula.dart
// import "package:http/http.dart" as http;
//
// import 'address.dart';
//
// Future<void> main(List<String> arguments) async {
//   var uri = Uri.parse("https://viacep.com.br/ws/90619900/json/");
//   var response = await http.get(uri);
//   print(response.statusCode);
//   //print("-=-=-=-=-=-=-");
//   //print(response.body);
//
//   Address a = new Address.fromJson(response.body);
//
//   print(a.getValue("cep"));
//   print(a.getValue("bairro"));
//
// }
