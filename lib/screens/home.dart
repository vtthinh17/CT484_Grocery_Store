import 'package:flutter/material.dart';
import '../utils/ui.dart';
import '../utils/routes.dart';
import '../utils/models.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
List<Product> demoList =[
  Product(
        imagePath: "assets/images/pepper_red.png",
        name: "Pepper Red",
        price: "12\$"),
    Product(
        imagePath: "assets/images/celery.png",
        name: "Celery",
        price: "8\$"),
    Product(
        imagePath: "assets/images/potato.png",
        name: "Potato",
        price: "9\$"),
    Product(
        imagePath: "assets/images/carrots.png",
        name: "Carrots",
        price: "3.5\$"),
];

class _HomeScreenState extends State<HomeScreen> {
  late final List<Product> demoListProducts = List.generate(
    demoList.length, 
    (index) => 
    Product(
      imagePath: demoList[index].imagePath, 
      name: demoList[index].name, 
      price: demoList[index].price
    )
  );
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Welcome User
                      Container(
                        height: 80,
                        child:
                            Image.asset('assets/images/user.png', scale: 3.4),
                      ),
                      // Name
                      Text(
                        'Welcome to Grocery Store',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          backgroundColor: Color.fromARGB(255, 171, 204, 231)
                        ),),
                      // Cart Button
                      Container(
                          // width: 50,
                          child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: BorderSide(color: Colors.black)
                                )
                            )
                        ),
                        child: Icon(Icons.shopping_bag_outlined),
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.cartRoute);
                        
                        },
                      )),
                    ]),
              ),
              // Search
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    height: 46,
                    decoration: BoxDecoration(
                        color: Color(0xffF3F5F7),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    child: const TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Category",
                          hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xff979899),
                              fontWeight: FontWeight.w500),
                          contentPadding: EdgeInsets.all(16),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xff23AA49),
                          ),
                        )),
                  )),
              // Banner
              Container(
                height: 160,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    // height: 
                  ),
                  items: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(
                      "assets/images/banner.png",
                      scale: 2.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(
                      "assets/images/banner1.png",
                      scale: 4.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(
                      "assets/images/banner2.jpg",
                      scale: 4.0,
                    ),
                  ),
                ], 
                ),
              ),
              // Categories
              Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      seeAll(context, "Categories"),
                    ],
                  )),
              // List categories
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    categoryView("assets/images/fruits.png", "Fruits"),
                    categoryView("assets/images/vegetables.png", "Vegetables"),
                    categoryView("assets/images/fastfood.jpg", "Fastfood"),
                    categoryView("assets/images/meat.png", "Meat")
                  ],
                ),
              ),
              SizedBox(height: 24),
              // Products + SeeALL product
              Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      seeAll(context, "Products"),
                    ],
                  )
                ),
              // Products List

              SizedBox(
                height: 200,
                width: double.infinity,
                child: GridView.builder(
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
                  itemCount: demoListProducts.length, 
                  itemBuilder: (context, index) {
                    return ProductCard(
                      imagePath: demoListProducts[index].imagePath, 
                      name: demoListProducts[index].name, 
                      price: demoListProducts[index].price,
                      // isFavorite: demoListProducts[index].isFavorite,  
                      onTapCallback: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context)=>
                              DetailsProductScreen(
                                demoListProducts[index]
                              )
                            
                        )
                        );
                      },           
                    );
                  }
                  )
              )

         ],
          ),
        ));
  }
}
