import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Network {
  void getNews() async {
    var client = http.Client();
    var response = await client.get('http://localhost/concours_api');

    if (response.statusCode == 200) {
      var jsonString = response.body;
    }
  }
}
