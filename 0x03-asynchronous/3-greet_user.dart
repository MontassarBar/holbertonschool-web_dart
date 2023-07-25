import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    var data = await fetchUserData();
    Map mapValue = jsonDecode(data);
    return "Hello ${mapValue['username']}";
  }
  catch (err) {
    return 'error caught: $err';
  }
}

Future<String> loginUser() async {
  try {
    var credentialsStatus = await checkCredentials();
    print('There is a user: $credentialsStatus');
    if (credentialsStatus == true) return await greetUser();
    else return 'Wrong credentials';
  }
  catch (err) {
    return 'error caught: $err';
  }
}
