class Hall {
  final String id;
  final String name;
  final String city;
  final double price;
  final double rating;
  final List<String> images;
  final String description;
  final Map<String, bool> amenities;

  Hall({
    required this.id,
    required this.name,
    required this.city,
    required this.price,
    required this.rating,
    required this.images,
    required this.description,
    required this.amenities,
  });
}