// Suggestions : I should add tags
class Destination {
  String name;
  String description;
  String imagePath;
  String timeZone;
  double area;
  String climate;
  String visaRequirements;

  final List<Countries> countries = [];
  final List<City> cities = [];
  final List<Attraction> attractions = [];
  final List<Hotel> hotels = [];
  final List<Restaurant> restaurents = [];
  double safetyRating;
  final List<Reviews> reviews = [];
  final List<Tag> tag = [];
  final List<Events> events = [];

  Destination({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.safetyRating,
    required this.timeZone,
    required this.area,
    required this.climate,
    required this.visaRequirements,
  });
}

class Countries {
  String name;
  String description;
  String imagepath;
  String capital;
  String currency;
  String languages;
  Destination destination;
  int population;
  double safetyRating;
  final List<City> cities = [];
  final List<Attraction> attractions = [];
  final List<Hotel> hotels = [];
  // final List<Tag> tag = [];
  final List<Restaurant> restaurants = [];

  Countries({
    required this.name,
    required this.description,
    required this.imagepath,
    required this.destination,
    required this.capital,
    required this.safetyRating,
    required this.currency,
    required this.languages,
    required this.population,
  });
}

class City {
  String name;
  String description;
  String imagepath;
  double safetyRating;
  int population;
  String timezone;
  String language;
  String currency;
  String climate;
  Destination destination;
  final List<Hotel> hotels = [];
  final List<Events> events = [];
  final List<Restaurant> restaurants = [];
  List<Attraction> attractions = [];

  City({
    required this.name,
    required this.description,
    required this.imagepath,
    required this.destination,
    required this.attractions,
    required this.safetyRating,
    required this.climate,
    required this.currency,
    required this.language,
    required this.population,
    required this.timezone,
  });
}

class Attraction {
  String name;
  String description;
  String imagepath;
  City city;
  Countries country;
  Destination destination;
  double rating;
  double safetyRating;
  List<Reviews> reviews = [];
  final List<Tag> tag = [];
  // final List<Images> images = [];
  Attraction({
    required this.name,
    required this.city,
    required this.country,
    required this.description,
    required this.destination,
    required this.rating,
    required this.safetyRating,
    required this.imagepath,
  });
}

class Hotel {
  String name;
  String description;
  String imagePath;
  double rating;
  double price;
  List<String> amenities = [];
  List<Reviews> reviews = [];
  Hotel({
    required this.name,
    required this.description,
    required this.amenities,
    required this.imagePath,
    required this.price,
    required this.rating,
    required this.reviews,
  });
}

class Restaurant {
  String name;
  String description;
  String imagepath;
  double rating;
  double safetyRating;
  final List<String> prices = [];
  final List<Reviews> reviews = [];

  Restaurant({
    required this.name,
    required this.description,
    required this.imagepath,
    required this.rating,
    required this.safetyRating,
  });
}

class Reviews {}

class Events {}

class Tag {}

class Images {}
