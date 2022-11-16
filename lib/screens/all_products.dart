import 'package:flutter/material.dart';
import '../widgets/product_card.dart';
import '../utils/models.dart';
import '../utils/ui.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "All products",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Image.asset(
            "assets/images/back_icon.png",
            scale: 2.2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            mainAxisExtent: 225,
          ),
          itemCount: Product.allProducts.length,
          itemBuilder: (context, index) {
            return ProductCard(
              imagePath: Product.allProducts[index].imagePath,
              name: Product.allProducts[index].name,
              price: Product.allProducts[index].price,
              onTapCallback: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        DetailsProductScreen(Product.allProducts[index])));
              },
            );
          },
        ),
      ),
    );
  }
}
