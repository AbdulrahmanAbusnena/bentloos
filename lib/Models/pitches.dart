class Pitches {
  String pid;
  String name;
  String description;
  String imagepath;
  String location;
  double time;
  double price;
  double sizes;

  Pitches({
    required this.name,
    required this.description,
    required this.imagepath,
    required this.location,
    required this.time,
    required this.price,
    required this.pid,
    required this.sizes,
  });
  factory Pitches.fromMap(Map<String, dynamic> data) {
    return Pitches(
      pid: data['pid'],
      name: data['name'],
      description: data['description'],
      imagepath: data['imagepath'],
      location: data['location'],
      time: data['time'],
      price: data['price'],
      sizes: data['sizes'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'pid': pid,
      'description': description,
      'name': name,
      'price': price,
      'time': time,
      'location': location,
      'imagepath': imagepath,
      'sizes': sizes,
    };
  }
}
