class Human {
  void walk() {
    print("Humans walk!");
  }
}

// inherting the parent class i.e Human
class Person extends Human {
  void speak() {
    print("That person can speak");
  }
}

void main() {
  Person p = new Person();
  p.speak();
  p.walk(); // invoking the parent class method
}
