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

void hello() {
  // List implements all array methods. use List<T> for typing it
  List<String> namesList = ["a", "b", "c"];

  for (var name in namesList) {
    print(name);
  }
}
