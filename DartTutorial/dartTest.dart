import 'dart:ffi';

void main() {
  """ 
    I think this is use as a doc 
    Yes this is for documentation
  """;

  print("Starting to learn dart o:");
  //this is a comment

  /*
    This is a multi-line comment
    1
    2
    3

  */

  //Data types
  num aNumber = 2;
  int anotherNumber = 2;

  print("A number value $aNumber type: ${aNumber.runtimeType}"); //
  print("A number value $anotherNumber type: ${anotherNumber.runtimeType}"); //
  print(num == int); //false
  print(num == num); //true
  print(int == int); //true
  print(aNumber.runtimeType == anotherNumber.runtimeType); //true

  String aString = 'Something'; //type declaration
  var anotherString = 'Something'; //Infered type

  bool aBoolean = true;

  dynamic aDynamic = 'a string';
  aDynamic = 2;
  aDynamic = true;

  /*
    var is used when a var its going to take a value and will be infere
    dynamic is dynamic lol
    bool, double, int, num, string, object
  */

  List myList;
  List<int> anotherList = [1, 2, 3, 4];
  List<num> anotherList2 = [1, 2, 3, 4];

  for (var i = 0; i < anotherList.length; i++) {
    print("The element $i is ${anotherList[i]}");
  }
  print("-|" * 10);
  for (var i in anotherList) {
    print("The element is -> $i");
  }
  if (anotherList.contains(2)) {
    print('si');
  }

  print('');
  var result = anotherList.where((element) => element >= 3);
  print(result); //runtimeType -> whereIterable
  for (var value in result) {
    print(value);
  }

  /*
  DART NULL SAFETY
  ?  if the object is not null -> do  myObejct?.property;
  ??  or in python  a ?? b a if is not nul and if its null then take b 
  ??=  -> a??=b if a is null will take the value of b if b is null lol null then 


  also can be used with arguments
  function a(var a?), a can be null List<String>? list can be null List<String?> the elements of the list can be null
    
  */
}

void aFunction() {} // its the same as a - aFunction
void arrowFunction() => 2; //ots the same as arrowFunction()=>2;

//a function that returns an integer
int aFunctionInt() {
  return 3;
}

//a function that returns an integer
num aFunctionInt2() {
  return 3;
}

String stringFunction(String argument) {
  return argument;
}
