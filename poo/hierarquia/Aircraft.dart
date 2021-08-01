import 'Veiculo.dart';

class Aircraft implements Veiculo{


  void turnOn() {
    print("Os motores estão ligados");
  }

  void turnOff() {
    print("Os motores estão desligados");
  }
  void goFoward(int step){
    step++;
   }
}