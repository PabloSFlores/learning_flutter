import 'package:my_app_9a/data/models/sticker_model.dart';

import 'company_model.dart';

class BikeModel {
  final String id;
  final String cylinderCapacity;
  final String brand;
  final String model;
  final String year;
  final String price;
  final String color;
  final String hp;
  final String km;
  final CompanyModel company;
  final List<StickerModel> stickers;

  BikeModel({
    required this.id,
    required this.cylinderCapacity,
    required this.brand,
    required this.model,
    required this.year,
    required this.price,
    required this.color,
    required this.hp,
    required this.km,
    required this.company,
    required this.stickers,
  });

  factory BikeModel.fromJson(Map<String, dynamic> json) {
    return BikeModel(
      id: json['id'],
      cylinderCapacity: json['cylinderCapacity'],
      brand: json['brand'],
      model: json['model'],
      year: json['year'],
      price: json['price'],
      color: json['color'],
      hp: json['hp'],
      km: json['km'],
      company: CompanyModel.fromJson(json['company']),
      stickers: List<StickerModel>.from(json['stickers'].map((x) => StickerModel.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cylinderCapacity': cylinderCapacity,
      'brand': brand,
      'model': model,
      'year': year,
      'price': price,
      'color': color,
      'hp': hp,
      'km': km,
      'company': company.toJson(),
      'stickers': List<dynamic>.from(stickers.map((x) => x.toJson())),
    };
  }

}