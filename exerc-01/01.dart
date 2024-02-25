class Person {
  String firstName;
  String lastName;
  int? age;

  Person(this.firstName, this.lastName, this.age);

//3º questão
  bool checkPerson() {
    return lastName.toLowerCase() == 'souza';
  }
}

void main(List<String> arguments) {
  var people = [
    Person('Clerton', 'Leal', 38),
    Person('Assis', 'Souza', 38),
    Person('Juliana', 'Souza', 28),
    Person('Martim', 'Marques', 4),
    Person('Edilange', 'Souza', 65),
  ];

  // 1 - Filter the people with last name iquals Assis

  var souzaLastName =
      people.where((element) => element.lastName.toLowerCase() == 'souza');

  souzaLastName.forEach((person) {
    print('${person.firstName} ${person.lastName}');
  });
  print('-' * 20);

  // 2 - Filter the people less than 25 years
  var ageUnder25 = people.where((element) => element.age! < 25);

  ageUnder25.forEach((element) {
    print('${element.firstName} ${element.lastName}');
  });
  print('-' * 20);

  // 3 - Create a method that receive a Person as parameter and
  // return true or false if the person have last name
  // equals Souza
  for (var person in people) {
    print('${person.firstName} ${person.lastName} => ${person.checkPerson()}');
  }
  print('-' * 20);

  // 4 - Print all persons on people list
  for(var person in people){
    print('Name: ${person.firstName} ${person.lastName}, Age: ${person.age}');
  }
}
