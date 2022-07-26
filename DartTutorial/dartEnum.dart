enum PersonProperties { name, age, address }

enum AnimalType { cat, dog, bunny }

void testingEnum(AnimalType animalType) {
  // print('animalType: ' + animalType.toString());
  print("animalType: $animalType");
  switch (animalType) {
    case AnimalType.cat:
      print('issa cat');
      break;
    case AnimalType.dog:
      print('issa dog');
      break;
    case AnimalType.bunny:
      print('issa bunny');
      break;
  }
}

class Bunny {
  final String name;
  Bunny(this.name);

  factory Bunny.wawa() {
    return Bunny('Wawarita');
  }

  @override
  bool operator ==(covariant Bunny other) => other.name == name;

  @override
  int get hashCode => name.hashCode;
}

extension Run on Bunny {
  void run() {
    print('My $name is running1');
  }

  void run1() {
    print('My $name is running2');
  }
}

int multiplyByTwo(int a) => a * 2; //Synch

Future<int> multiplyByTwoAsync(int a) =>
    Future.delayed(Duration(seconds: 3), () => multiplyByTwo(a));

Future<int> multiplyByTwoAsyncBraces(int a) {
  return Future.delayed(Duration(seconds: 3), () => multiplyByTwo(a));
}

void testAsync() async {
  //FUUUUTUUURE
  final int result = await multiplyByTwoAsync(7);
  print(multiplyByTwo(2)); //this is a synchronous flow
  // print(await multiplyByTwoAsync(7));
  print(result);
  print(multiplyByTwo(5));
}

Stream<String> basicStream() {
  // return Stream.value('Something in this stream');
  return Stream.periodic(
      Duration(seconds: 2), (value) => 'Some value in periodic');
}

void testStream() async {
  await for (final value in basicStream()) {
    print(value);
  }
  print('Done');
}

Iterable<int> generatorSync() sync* {
  yield 1;
  print('1->2');
  // await Future.delayed(Duration(seconds: 1)); //mno funcono asi
  yield 2;
  print('2->3');
  yield 3;
  print('3->4');
  yield 4;
  print('4');
}

// Stream<Iterable<int>> generatorASync() async* {
Stream<int> generatorASync() async* {
  yield 1;
  print('1->2');
  await Future.delayed(Duration(seconds: 1)); //asi si porque es asyncrono alaa
  yield 2;
  print('2->3');
  yield 3;
  print('3->4');
  yield 4;
  print('4');
}

void main() {
  // print(PersonProperties.values);
  // print(PersonProperties.name.name);
  // testingEnum(AnimalType.bunny);

  // //factory
  // Bunny wawaInstance = Bunny.wawa();
  // print(wawaInstance);
  // print(wawaInstance.name);
  // wawaInstance.run();
  // wawaInstance.run1();

  // Bunny wawaInstance2 = Bunny.wawa();

  // //needs to create the int get hashCode  and the bool operator ==() => ;
  // print(wawaInstance == wawaInstance2);
  // if (wawaInstance == wawaInstance2) {
  //   print('ther are equal');
  // }

  //Future
  // testAsync();

  //Streams
  // testStream();

  //Generators
  ///Sync
  // for (var value in generatorSync()) {
  //   print("Got for sync generator-> $value");
  // }

  ///Async
  generatorASync().listen((event) {
    print("I got $event");
  });
}
