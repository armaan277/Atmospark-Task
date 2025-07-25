class Ground {
  final String id;
  final String name;
  final String location;
  final List<String> imageUrl;
  final double pricePerHour;
  final List<String> availableSlots;
  final double rating;
  final String category;

  Ground({
    required this.id,
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.pricePerHour,
    required this.availableSlots,
    required this.rating,
    required this.category,
  });
}
