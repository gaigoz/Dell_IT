import "dart:io";
//
// main() {
//   print("main being started");
//   readNews().then((String e) => print(e));
//   print("main being finished");
//
// }
//
//
// Future<String> readNews() async{
//   print("Dart course started!!!");
//   sleep(const Duration(seconds: 3));
//   return "Course being placed...";
// }
//==============================
// main() {
//   print("1. main being started");
//   readNews().then((String e) => print(e));
//   //print(readNews());
//   print("4. main being finished");
//   print("5. soh pq pediu com educacao");
// }
//
//
// Future<String> readNews() async{
// //String readNews() {
//   print("2. Dart course started!!!");
//   sleep(const Duration(seconds: 3));
//   return "3. Course being placed...";
// }
//==================================
// import "dart:io";
//
// main() {
//   print("1. main being started");
//   readNews().then((String e) => print(e));
//   //print(readNews());
//   print("4. main being finished");
//   print("5. soh pq pediu com educacao");
// }
//
//
// Future<String> readNews() async{
// //String readNews() {
//   print("2. Dart course started!!!");
//   sleep(const Duration(seconds: 3));
//   return "3. Course being placed...";
// }
//
// //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//
// import "dart:io";
//
// Future<String> games() async{
//   sleep(Duration(seconds: 5));
//   return "Jogando o jogo B";
// }
//
// main() async{
//   print("Jogando o joga A");
//   var test=await games();
//   print(test);
// }
// //-=-=-=-=-=-=-=-=-=--
// import "dart:io";
//
// void leAquivo() async{
//   print("abertura do arquivo");
//   File meuArquivo= new File("nomes.txt");
//   /*
//   var linhas = meuArquivo.readAsLinesSync();
//   linhas.forEach((e) => print(e));
//   */
//   /*
//   Future future = meuArquivo.readAsLines();
//
//   future.then(
//       (e) => e.forEach((b)=>print(b))
//   );
//   */
//   var lista = await meuArquivo.readAsLines();
//   lista.forEach((e) => print(e) );
// }
//
// main(){
//   print("abrindo o arquivo");
//   leAquivo();
//   print("fim da leitura");
// }
// //-=-=-=-=-=-=-=-=-=-=-=-
// import "dart:io";
//
// Future<String> fctA() async{
//   print("fct a in");
//   await Future.delayed(Duration(seconds: 9));
//   print("fct a out");
//   return "fct A result";
// }
//
// Future<String> fctB() async{
//   print("fct B in");
//   await Future.delayed(Duration(seconds: 5));
//   print("fct B out");
//   return "fct B result";
// }
//
// Future<String> fctC() async{
//   print("fct C in");
//   await Future.delayed(Duration(seconds: 1));
//   print("fct C out");
//   return "fct C result";
// }
//
// Future<void> main() async{
//   print("Inicio da main");
//
//   fctA()
//       .then( (e) => fctB() )
//       .then( (e) => fctC() );
//
// /*
//   Future
//     .wait([fctC(), fctB(), fctA()])
//     .then( (List<String> lista) => lista.forEach((e) => print(e) ) );
// */
//
//   print("Fim da main");
// }
// //-=-=-=-=-=-=-=--=-=-=-=-=-=-
// import "dart:io";
// import "dart:async";
//
// Future<void> main() async{
//   print("Fetching user order");
//   print(await CreateOrderedMessage());
// }
//
// Future<String> CreateOrderedMessage() async{
//   var order = await fetchUserOrder();
//   return "Your order is: $order ";
// }
//
// Future<String> fetchUserOrder(){
//   var valor = Future.delayed(
//       Duration(seconds: 5),
//           () => "large Latte"
//   );
//   return valor;
// }
//
// //-=-=-=-=-=-=-=-=-=-
// import "dart:convert";
//
// main(){
//
//   final favNum=5;
//   final pi=3.141592;
//   final chocolate=true;
//   final name='Ana';
//   final favoriteList = ['inter', 'desafios', 'cerveja', 18, 3.33, false, null];
//   final formData = {
//     'favoriteNumber':favNum,
//     'ValueOfPi':pi,
//     'chocolate': chocolate,
//     'sign': favoriteList,
//     'anyThing':null
//   };
//
//   print(json.encode(favNum));
//   print("=-=-=-=-=-=-=-=-=-");
//   print(json.encode(pi));
//   print("=-=-=-=-=-=-=-=-=-");
//   print(json.encode(chocolate));
//   print("=-=-=-=-=-=-=-=-=-");
//   print(json.encode(name));
//   print("=-=-=-=-=-=-=-=-=-");
//   print(json.encode(favoriteList));
//   print("=-=-=-=-=-=-=-=-=-");
//   print(json.encode(formData));
//   print("=-=-=-=-=-=-=-=-=-");
//
// }
