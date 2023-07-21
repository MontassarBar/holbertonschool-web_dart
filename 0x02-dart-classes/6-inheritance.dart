import '6-password.dart';
class User extends Password {
  String name = '';
  int age = 0;
  double height = 0;
  int id = 0;
  String user_password = "";
   User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
     required this.user_password,
  }) : super(password: user_password);
  toJson() {
    return {'id': id, 'name': name, 'age': age, 'height': height};
  }
  static User fromJson(Map<dynamic, dynamic> userJson){
    return User(id: userJson['id'], name: userJson['name'], age: userJson['age'], height: userJson['height'], user_password: userJson['user_password']);
  }
  String toString(){
    final passwordd = new Password(password: this.user_password);
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${passwordd.isValid()})';
  }
}