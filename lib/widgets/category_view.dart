import 'package:flutter/material.dart';

Widget categoryView(String imagePath, String catagoryName) {
  return Expanded(
    flex: 1,
    child: Column(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffF3F5F7),
          radius: 32,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              imagePath,
              scale: 4.0,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          catagoryName,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
        )
      ],
    ),
  );
}
