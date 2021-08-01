class Pessoa {
  String _nome;
  int _idade;
  String sexo;
  double salario;

  Pessoa(this._nome, this._idade, this.sexo, this.salario);

  String get nomePessoa => this._nome;

  int get idadePessoa => this._idade;

  String get sexoIndividuo => this.sexo;

  double get salarioIndividuo => this.salario;

  @override
  String toString() {
    return '\n Nome: $_nome, Idade: $_idade, Sexo: $sexo, Salario: $salario';
  }

  static void listarCadastro(List<Pessoa> list) {
    for (var x in list) {
      print(x.toString());
    }
  }

  static void idadeMedia(List<Pessoa> list) {
    var somaM = 0, contM = 0, somaF = 0, contF = 0;
    for (var x in list) {
      if (x.sexo.startsWith("M")) {
        somaM = x._idade;
        contM++;
      } else if (x.sexo.startsWith("F")) {
        somaF = x._idade;
        contF++;
      }
    }
    print("\nIdade média de homens: ${(somaM/contM).toStringAsFixed(2)} \n");
    print("Idade média de mulheres: ${(somaF/contF).toStringAsFixed(2)}");
  }

  static void maiorSalario(List<Pessoa> list){
    var maiorS = 0.0;
    var sexo = '';
    for(var x in list){
      if(x.salario > maiorS){
        maiorS = x.salario;
        sexo = x.sexo;
      }
    }
    print('\nO maior salário é $maiorS Reais, de ums pessoa do sexo $sexo ');
  }
}

void main() {
  var p1 = Pessoa("Vinicius", 26, "Masculino", 2000);
  var p2 = Pessoa("Katia", 22, "Feminino", 3000);
  var p3 = Pessoa("Bruna", 28, "Feminino", 6000);
  var p4 = Pessoa("Ricardo", 50, "Masculino", 2000);
  var p5 = Pessoa("Paulo", 26, "Feminino", 4500);
  var p6 = Pessoa("Rafaela", 35, "Feminino", 6500);
  var p7 = Pessoa("Augusto", 35, "Masculino", 6500);

  var list = [p1, p2, p3, p4, p5, p6, p7];
  //Lista o Cadastro
  Pessoa.listarCadastro(list);
  //Idade média
  Pessoa.idadeMedia(list);
  //Maior Salario
  Pessoa.maiorSalario(list);
  //Remover mulheres com média de idade menor

  //Remover Homens com média de idade menor
}
