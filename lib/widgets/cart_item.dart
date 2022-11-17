import 'package:flutter/material.dart';
import '../models/cart_data.dart';

class CartItem extends StatefulWidget{
  final CartItemModel item;
  const CartItem({Key? key, required this.item}): super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem>{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(bottom: 4),
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
              color: Color.fromARGB(255, 182, 209, 248),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image.asset(widget.item.imagePath,width: 30,height: 30,)),
          Expanded(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.item.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
                ),
              SizedBox(height: 10,),
              Text(widget.item.price,
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),)
            ],
          )
          ),
        ],
      ),
    );
  }
}