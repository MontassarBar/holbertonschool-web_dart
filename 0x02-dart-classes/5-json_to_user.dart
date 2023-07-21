class User {
  String name = '';
  int age = 0;
  double height = 0;
  int id = 0;
  User({required this.name, required this.age, required this.height, required this.id});
  toJson() {
    return {'name': name, 'age': age, 'height': height, 'id': id};
  }
  static User fromJson(Map<dynamic, dynamic> userJson){
    return User(id: userJson['id'], name: userJson['name'], age: userJson['age'], height: userJson['height']);
  }
  String toString(){
    return 'User(id : $id ,name: $name, age: $age, height: $height)';
  }
}
