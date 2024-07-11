class CompanyModel {
    final String name;
    final String address;


    CompanyModel({
        required this.name,
        required this.address,
    });

    factory CompanyModel.fromJson(Map<String, dynamic> json) {
        return CompanyModel(
            name: json['name'],
            address: json['address'],
        );
    }

    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'address': address,
        };
    }



}