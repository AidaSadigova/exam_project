import 'dart:convert';
import 'package:exam_project/model/user.dart';
import 'package:http/http.dart' as http;

class UserApi {
  static Future<List<Car>> fetchUsers() async {
    const url = 'http://45.87.173.234:10/car';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final cars = json['cars'] as List<dynamic>;
    final users = cars.map((e) {
      return Car(
        title: e['title'],
        category: e['category'],
        image: e['image'],
      );
    }).toList();
    return users;
  }
}
