import 'package:test/test.dart';
import '../assync/exercicios/viacep2.0/Address.dart';
void main() {
  group('Address object test', () {
    var string = ''' {
    "cep": "90619-900",
    "logradouro": "Avenida Ipiranga 6681",
    "complemento": "",
    "bairro": "Partenon",
    "localidade": "Porto Alegre",
    "uf": "RS",
    "ibge": "4314902",
    "gia": "",
    "ddd": "51",
    "siafi": "8801"
 }''';
    test('Teste de criação do objeto válido', () {
      var a = Address.fromJson(string);
      expect(a.getValue('cep'), equals('90619-900'));
    });

    test('Get value com parametro nulo', () {
      var a = Address.fromJson(string);
      expect(a.getValue(null), isNull);
    });

    test('Get value com parametro errado', () {
      var a = Address.fromJson(string);
      expect(() => a.getValue('Edson'), throwsException);
    });
  });
}
