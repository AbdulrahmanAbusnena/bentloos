class Country {
  String countryid;
  String name;
  String description;
  String imagepath;
  String location;
  int safetyRating;

  Country({
    required this.countryid,
    required this.name,
    required this.description,
    required this.imagepath,
    required this.location,
    required this.safetyRating,
  });

  Map<String, Object?> toDocument() {
    return {
      'countryid': countryid,
      'name': name,
      'description': description,
      'safetyRating': safetyRating,
      'location': location,
      'imagepath': imagepath,
    };
  }

  static Country fromDocument(Map<String, dynamic> doc) {
    return Country(
        countryid: doc['countryid'],
        name: doc['name'],
        description: doc['description'],
        imagepath: doc['imagepath'],
        location: doc['location'],
        safetyRating: doc['safetyRating']);
  }

  Country toEntity() {
    return Country(
      countryid: countryid,
      name: name,
      description: description,
      imagepath: imagepath,
      location: location,
      safetyRating: safetyRating,
    );
  }

  static Country fromEntity(Country entity) {
    return Country(
        countryid: entity.countryid,
        name: entity.name,
        imagepath: entity.imagepath,
        description: entity.description,
        location: entity.location,
        safetyRating: entity.safetyRating);
  }
}
