class ShoeItem {
  final String image;
  final String title;
  final String subtitle;
  final String price;
  final String id;

  ShoeItem({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.id,
  });

  factory ShoeItem.fromJson(Map<String, dynamic> json) {
    return ShoeItem(
      image: json['image'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      price: json['price'] as String,
      id: json['id'] as String,
    );
  }
}
