class FoodModal {
  final String name;
  final String details;
  final String image;
  final int price;
  final String time;
  final double rating;

  FoodModal(
      {required this.name,
      required this.details,
      required this.image,
      required this.price,
      required this.time,
      required this.rating});

  factory FoodModal.fromData({required FoodModal data}) {
    return FoodModal(
        name: data.name,
        details: data.details,
        image: data.image,
        price: data.price,
        time: data.time,
        rating: data.rating);
  }
}
