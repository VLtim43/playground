import 'dart:io';

// Dart is an object-oriented language, and supports single inheritance
// In Dart, everything is an object, and every object is an instance of a class. There are no primitives, so even numbers are objects
// Dart is typed
// Dart supports top-level functions and declarations, but not statments

// Dart requires Main function
void main() {
  // var keyword used for infered typed variables
  var unTypedName = "infered typed World!";

  // when typing variables just put the type
  String typedName = "typed World!";

  // Dynamic keyword means any type
  dynamic dynamicValue = "dynamic World!";

  // Final keyword means it's a const on RUN TIME that cannot have it's value changed
  final DateTime finalName = DateTime.now();
  //  finalName = "new typed World!" => ERROR: The final variable 'finalName' can only be set once.

  // Final keyword means it's a const on COMPILE TIME that cannot have it's value changed
  const String constName = "const World!";
  // constName = "new const World!"; => ERROR: Constant variables can't be assigned a value after initialization.

  // Cannot change const in any way
  const List<String> constList = ["a", "b", "c"];
  // constList.add("d"); => ERROR: Unsupported operation: Cannot add to an unmodifiable list

  // Final reference cannot change, but collection elements can be changed
  final List<String> finalList = ["a", "b", "c"];
  finalList.remove("b");

  final finalValueNotInitialized;
  finalValueNotInitialized = "now having a value";

  // functions need return type, if nothing "null"
  void simpleHello(String name) {
    print("Hello $name");
  }

  // List implements all array methods. use List<T> for typing it
  List<String> namesList = ["a", "b", "c"];

  void listHello(List<String> namesList) {
    for (var name in namesList) {
      print("Hello $name");
    }
  }

  void ioHello() {
    stdout.writeln("Waiting for user input!");
    // readLineSync can return null so we need to set ? on the type
    String? input = stdin.readLineSync(); // blocking reading operation
    print('Hello $input');
  }

  void mainHello() {
    ioHello();
  }

  mainHello();
}
