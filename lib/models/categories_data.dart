class CategoryItem {
  final String imagePath;
  final String name;
  
  CategoryItem(
      {required this.imagePath, required this.name}
  );
  static final categoryItemsList = [
    CategoryItem(imagePath: "assets/images/fruits.png",name: "Fruits",),
    CategoryItem(imagePath: "assets/images/vegetables.png",name: "Vegatables",),
    CategoryItem(imagePath: "assets/images/diary.png",name: "Diary",),
    CategoryItem(imagePath: "assets/images/meat.png",name: "Meat",),
    CategoryItem(imagePath: "assets/images/fastfood.jpg",name: "Fastfood",),
    CategoryItem(imagePath: "assets/images/drink.png",name: "Drink",),
    CategoryItem(imagePath: "assets/images/meat.png",name: "Meat",),
    CategoryItem(imagePath: "assets/images/fruits.png",name: "Fruits",),
  ];
}
