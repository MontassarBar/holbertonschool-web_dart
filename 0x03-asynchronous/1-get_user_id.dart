import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  var data = await fetchUserData();
  Map valueMap = jsonDecode(data);
  return valueMap['id'];
  }
