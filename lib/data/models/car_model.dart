import 'package:flutter/material.dart';

class CarModel {
  final String id;
  final String model;
  final String year;
  final String color;
  final String price;
  final String description;


  CarModel({
    required this.id,
    required this.model,
    required this.year,
    required this.color,
    required this.price,
    required this.description,
  });


  factory CarModel.fromJson(Map<String, dynamic> json) {
    return CarModel(
      id: json['id'],
      model: json['model'],
      year: json['year'],
      color: json['color'],
      price: json['price'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'model': model,
      'year': year,
      'color': color,
      'price': price,
      'description': description,
    };
  }

}
