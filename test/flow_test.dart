import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import '../assync/exercicios/viacep2.0/Address.dart';

void main() {
  var url;
  var response;
  setUp(() async {
    url = Uri.parse('https://viacep.com.br/ws/90619900/json/');
    response = await http.get(url);
  });
  group('teste do fluxo', () {
    test('Conexão com o servidor ok', (){
      expect(response.statusCode,equals(200));
    });

    test('Criação do objetivo a partir de dado do site', (){
    var a = Address.fromJson(response.body);
    expect(a.getValue('cep'), '90619-900');
    });
  });
}
