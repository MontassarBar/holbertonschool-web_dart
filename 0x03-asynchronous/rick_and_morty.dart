import 'package:http/http.dart' as http;
import 'dart:convert';


printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse("https://rickandmortyapi.com/api/character"));
    var body = jsonDecode(response.body);
    for (var character in body["results"]) {
      print(character['name']);
    }
  }
  catch (err) {
    return 'error caught: $err';
  }
}