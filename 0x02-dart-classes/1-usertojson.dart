class User {
  String name = '';
  int age = 0;
  double height = 0;
  toJson() {
    return {'name': name, 'age': age, 'height': height};
  }
}