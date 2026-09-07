import 'dart:io';

// Dart requires Main function explicily
void main() {
  hello();
}

// var keyword used for infered typed variables
var unTypedName = "infered typed World!";

// when typing variables just put the type
String typedName = "typed World!";

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

void hello() {
  ioHello();
}
