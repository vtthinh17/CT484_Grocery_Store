import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;
  final VoidCallback onTapCallback;
  
 
  const ProductCard(
      {Key? key,
      required this.imagePath,
      required this.name,
      required this.price,
      required this.onTapCallback})
      : super(
          key: key,
        );
        

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTapCallback(),
      child: Card(
          color: Color(0xffF3F5F7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              children: [
                // image
                Image.asset(
                  imagePath,
                  width: 120,
                  height: 80,
                ),
                SizedBox(height: 8,),
                // product name
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [                   
                    Icon(Icons.touch_app_outlined,color: Colors.green,),
                    Text(
                      'Tap to view details',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w300
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
