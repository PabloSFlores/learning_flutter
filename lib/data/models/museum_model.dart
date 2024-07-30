class MuseumModel {
  final int? id;
  final String name;
  final String? location;
  final String? tariffs;
  final String? schedules;
  final String? contactNumber;
  final String? contactEmail;
  final List<String>? pictures;

  MuseumModel(
      {this.id,
      required this.name,
      this.location,
      this.tariffs,
      this.schedules,
      this.contactNumber,
      this.contactEmail,
      this.pictures});

  factory MuseumModel.fromJson(Map<String, dynamic> json) {
    return MuseumModel(
        id: json["id"],
        name: json["name"],
        location: json["location"],
        tariffs: json["tariffs"],
        schedules: json["schedules"],
        contactNumber: json["contact_number"],
        contactEmail: json["contact_email"],
        pictures: json["pictures"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "location": location,
      "tariffs": tariffs,
      "schedules": schedules,
      "contact_number": contactNumber,
      "contact_email": contactEmail,
      "pictures": pictures
    };
  }
}
