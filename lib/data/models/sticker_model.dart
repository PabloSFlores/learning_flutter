class StickerModel {
  final String name;
  final String imageUrl;

  StickerModel({required this.name, required this.imageUrl});

  factory StickerModel.fromJson(Map<String, dynamic> json) {
    return StickerModel(
      name: json['name'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imageUrl': imageUrl,
    };
  }

}