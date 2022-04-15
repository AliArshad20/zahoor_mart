class Productsmodel {
  final String id, title, imageurl, description;
  final double price;
  bool isfavouritte;

  Productsmodel({
    required this.id,
    required this.title,
    required this.imageurl,
    required this.description,
    required this.price,
    this.isfavouritte = false,
  });
}

