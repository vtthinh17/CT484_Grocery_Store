class Product {
   final String imagePath,name,price;

  Product(
      {required this.imagePath,required  this.name,required  this.price}
  );
  static List<Product> allProducts = [
    Product(imagePath: "assets/images/burger.jpg", name: "Burger", price: "2.99\$"),
    Product(imagePath: "assets/images/pepper_red.png", name: "Pepper Red", price: "12\$"),
    Product(imagePath: "assets/images/butternut.png", name: "Butternut", price: "8\$"),
    Product(imagePath: "assets/images/carrots.png", name: "Carrots", price: "3.5\$"),
    Product(imagePath: "assets/images/lamb_meat.png", name: "Lamb meat", price: "35\$"),
    Product(imagePath: "assets/images/ginger.png", name: "Ginger", price: "4\$"),
    Product(imagePath: "assets/images/broccoli.png", name: "Broccoli", price: "7\$"),
    Product(imagePath: "assets/images/celery.png", name: "Celery", price: "2.5\$"),
    Product(imagePath: "assets/images/lettuce.png", name: "Lettuce", price: "2\$"),
    Product(imagePath: "assets/images/potato.png", name: "Potato", price: "4\$"),
    

];
}

