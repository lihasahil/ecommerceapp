import 'package:flutter/material.dart';
import 'package:project_3/feature/shop/presentation/product_card.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              /* Tab ko Name */
              TabBar(
                labelColor: Colors.black,
                  tabs: [
                    Center(child: Tab(text: "Toys")),
                    Center(child: Tab(text: "Clothes")),
                    Center(child: Tab(text:"Chocolates")),
              ]),
              /* kun page ma jane define garne
              *  */
              Expanded(
                child: TabBarView(
                    children: [
                      GridView.builder(
                          itemCount: 10,
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing:12.0,
                            mainAxisSpacing:12.0,
                          ),
                          itemBuilder: (context,index) {
                       return ProductCard(
                            productImage: 'assets/playstore.png',
                            productTitle: "Doll No 1",
                            productPrice: "Rs 1500");
                          }),
                        Center(child: Text('Yeta Luga Painxa')),
                       Center(child: Text('Yeta Mithai Painxa')),
                  ]
                ),
              ),
            ],
          ),
        )

    );
  }
}

