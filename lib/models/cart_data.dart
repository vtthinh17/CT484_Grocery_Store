class CartItemModel{
  final String name,imagePath,price;
  CartItemModel({required this.name, required this.imagePath, required this.price});

  static final cartItemList = [
    CartItemModel(name: "Potato", imagePath: "assets/images/potato.png", price: "4\$"),
    CartItemModel(name: "Carrots", imagePath: "assets/images/carrots.png", price: "3.5\$"),
    CartItemModel(name: "Broccoli", imagePath: "assets/images/broccoli.png", price: "7\$"),
    CartItemModel(name: "Celery", imagePath: "assets/images/celery.png", price: "2.5\$"),
    CartItemModel(name: "Butter Nut", imagePath: "assets/images/butternut.png", price: "8\$"),
    CartItemModel(name: "Pepper red", imagePath: "assets/images/pepper_red.png", price: "4\$"),
    CartItemModel(name: "Broccoli", imagePath: "assets/images/broccoli.png", price: "7\$"),
    CartItemModel(name: "Celery", imagePath: "assets/images/celery.png", price: "2.5\$"),
  ];
}