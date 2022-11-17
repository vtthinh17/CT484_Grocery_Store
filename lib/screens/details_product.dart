import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utils/models.dart';

class DetailsProductScreen extends StatefulWidget {
  final Product productDataModel;
  const DetailsProductScreen(this.productDataModel, {Key? key})
      : super(key: key);

  @override
  State<DetailsProductScreen> createState() => _DetailsProductScreenState();
}

class _DetailsProductScreenState extends State<DetailsProductScreen> {
  int itemCount = 0;
  List<Product> cartItemsList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details product')),
      body: Column(
        children: [
          // Product Image
          Expanded(
            child: Image.asset(
              widget.productDataModel.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 30),
          // product name
          Text(
            widget.productDataModel.name,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 16),
          // product price
          Text(widget.productDataModel.price,
              style: TextStyle(
                  color: Color(0xffFF324B),
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          // Product + -
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      if (itemCount > 0) itemCount--;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey)),
                    child: Icon(
                      Icons.remove,
                      color: Colors.red,
                    ),
                  ),
                ),
                // quantity
                Text(
                  "Quantity: $itemCount",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      itemCount++;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey)),
                    child: Icon(
                      Icons.add,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
          ),
          // Button
          Container(
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                // addItemToCart handler?

                // cartItemsList.add(widget.productDataModel);
                // for(int i=0; i<itemCount;i++){
                //   cartItemsList.add(widget.productDataModel);
                // print(cartItemsList.length);
                // }

                final snackBar = SnackBar(
                  duration: Duration(seconds: 2),
                  content: Text('${itemCount} has been added to cart'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      //  removeItemFromCart handler?
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    },
                  ),
                );

                if (itemCount > 0) {
                  // + ${itemCount} to cart& show snackbar
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: const Text('Add to cart'),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                shape: StadiumBorder(),
                backgroundColor: Color(0xff23AA49),
              ),
            ),
          )
        ],
      ),
    );
  }
}
