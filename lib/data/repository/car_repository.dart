import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/car_model.dart';

class CarRepository {
  final String apiUrl;
  final String apiKey;

  CarRepository({required this.apiUrl, required this.apiKey});

  Future<void> createCar(CarModel car) async {
    final response = await http.post(
      Uri.parse('$apiUrl/cars'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'x-api-key': apiKey,
      },
      body: jsonEncode(car.toJson()
        ..remove('id')),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to create car');
    }
  }

  Future<List<CarModel>> getCars() async {
    final response = await http.get(
      Uri.parse('$apiUrl/cars'),
      headers: <String, String>{
        'x-api-key': apiKey
      },
    );

    if (response.statusCode == 200) {
      final List<dynamic> cars = jsonDecode(response.body);
      return cars.map((json) => CarModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load cars');
    }
  }

  Future<void> updateCar(CarModel car) async {
    final response = await http.put(
      Uri.parse('$apiUrl/cars/${car.id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'x-api-key': apiKey
      },
      body: jsonEncode(car.toJson()),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update car');
    }
  }

  Future<void> deleteCar(String id) async {
    final response = await http.delete(
      Uri.parse('$apiUrl/cars/$id'),
      headers: <String, String>{'x-api-key': apiKey},
    );

    if (response.statusCode != 204) {
      throw Exception('Failed to delete car');
    }
  }

}