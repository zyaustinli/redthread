class CartItem {
  final String image;
  final String brandName;
  final String productName;
  final double price;
  final String size;
  final String color;
  final double discount;
  int quantity;

  CartItem({
    required this.image,
    required this.brandName,
    required this.productName,
    required this.price,
    required this.size,
    required this.color,
    required this.discount,
    this.quantity = 1,
  });

  // Factory constructor to create a CartItem from JSON
  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      image: json['image'] as String,
      brandName: json['brandName'] as String,
      productName: json['productName'] as String,
      price: json['price'].toDouble(),
      size: json['size'] as String,
      color: json['color'] as String,
      discount: json['discount'].toDouble(),
      quantity: json['quantity'] as int,
    );
  }

  // Method to convert CartItem to JSON
  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'brandName': brandName,
      'productName': productName,
      'price': price,
      'size': size,
      'color': color,
      'discount': discount,
      'quantity': quantity,
    };
  }
}