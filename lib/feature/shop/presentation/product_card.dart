import 'package:flutter/material.dart';
import 'product_details.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.productImage, required this.productTitle, required this.productPrice});

    final String productImage;
    final String productTitle;
    final String productPrice;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()
      {
        Navigator.push(context,
        MaterialPageRoute(
          builder:(context)=>ProductDetails(
            productImage:productImage,
            productTitle:productTitle,
            productPrice:productPrice,
            productDescription:'This is My product Description',
          ),
        ),);
      },



      child:Card(
      child: Column(
        children: [
          Expanded(child: Image.asset(productImage,fit: BoxFit.contain,)),
          Text(productTitle,style: TextStyle(fontWeight: FontWeight.bold), ),
          Text(productPrice,style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    ),);
  }
}

