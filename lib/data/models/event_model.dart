class EventModel {
  final String id;
  final String name;
  final String description;
  final String startDate;
  final String endDate;
  final String category;
  final String idMuseum;
  final String pictures;

  EventModel({
    required this.id,
    required this.name,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.category,
    required this.idMuseum,
    required this.pictures,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      startDate: json['startDate'],
      endDate: json['endDate'],
      category: json['category'],
      idMuseum: json['idMuseum'],
      pictures: json['pictures'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'startDate': startDate,
      'endDate': endDate,
      'category': category,
      'idMuseum': idMuseum,
      'pictures': pictures,
    };
  }
}