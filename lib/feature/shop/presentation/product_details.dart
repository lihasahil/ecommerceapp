import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.productImage, required  this.productTitle, required this.productPrice, required this.productDescription});
  final String productImage;
  final String productTitle;
  final String productPrice;
  final String productDescription;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Details",
          style: TextStyle(color: Colors.green),
        ),
        centerTitle: true,
      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height:300,
                  child: Image.asset(productImage),
                ),
                const SizedBox(height: 20),
                Text(productTitle, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                Text(productPrice, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                Text(productDescription, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: (){},
                    child: Text(
                      "Add to Cart",
                    )),

              ]),
        ));
  }
}



