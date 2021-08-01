
class Carro {
  final double _tanque;
  var _estadoTanque;
  var _quilometragem;
  //porque ao trocar para um tipo não funciona?
  var _rendimento;

  Carro(this._tanque, double rendimento) {
    _quilometragem = 0;
    _estadoTanque = _tanque;
    _rendimento = rendimento;
  }

  double get getQuilometragem => _quilometragem;
  double get getEstadoTanque => _estadoTanque;
  double get getCapacidadeTanque => _tanque;
  double get getRendimentoCarro => _rendimento;

  //set capacidadeTanque(double capacidadeNova) => _tanque = capacidadeNova;

  set EstadoDotanque(double e) => _estadoTanque = _estadoTanque + e;

  set setQuilometragem(double e) => _quilometragem = _quilometragem + e;

  moverCarro(double distancia) {
    var consumo = getEstadoTanque - (distancia / getRendimentoCarro);
    if (consumo > getEstadoTanque) {
      print("Gasolina insuficiente, distancia máxima permitida é ${getEstadoTanque * distancia} Km");
    } else {
      EstadoDotanque = consumo;
      setQuilometragem = distancia;
    }
  }
  abastecerCarro(double gasolina) {
    if((getEstadoTanque + gasolina) > getCapacidadeTanque ){
      print("Limete máximo do tanque de $_tanque atingido");
      EstadoDotanque = gasolina;
    }else{
      EstadoDotanque = gasolina;
    }
  }

}

void main(){
  var c1 = Carro(60, 15);
  print(c1._tanque);
  print(c1._estadoTanque);
  c1.moverCarro(400);
  print(c1._estadoTanque);
  print(c1.getQuilometragem);
  c1.moverCarro(20);
  print(c1.getQuilometragem);

}

