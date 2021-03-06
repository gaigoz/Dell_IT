import 'dart:convert';

class Address {
  String? _cep,
      _logradouro,
      _complemento,
      _bairro,
      _localidade,
      _uf,
      _ibge,
      _gia,
      _ddd,
      _siafi;

  Address(
      this._cep,
      this._logradouro,
      this._complemento,
      this._bairro,
      this._localidade,
      this._uf,
      this._ibge,
      this._gia,
      this._ddd,
      this._siafi);

//construtor nomeado
  Address.fromJson(String source) {
    var jsonAux = json.decode(source);
    // map{string:}
    this._cep = jsonAux["cep"];
    this._logradouro = jsonAux["logradouro"];
    this._complemento = jsonAux["complemento"];
    this._bairro = jsonAux["bairro"];
    this._localidade = jsonAux["localidade"];
    this._uf = jsonAux["uf"];
    this._ibge = jsonAux["ibge"];
    this._gia = jsonAux["gia"];
    this._ddd = jsonAux["ddd"];
    this._siafi = jsonAux["siafi"];
  }
  //para pegar os valores por serem privados
  String? getValue(String field){
    switch(field){
      case "cep": return this._cep; break;
      case "logradouro": return this._logradouro; break;
      case "complemento":return this._complemento; break;
      case "bairro":return this._bairro; break;
      case "localidade":return this._localidade; break;
      case "uf":return this._uf; break;
      case "ibge":return this._ibge; break;
      case "gia":return this._gia; break;
      case "ddd":return this._ddd; break;
      case "siafi":return this._siafi; break;
      default: return null;
    }
  }
}
