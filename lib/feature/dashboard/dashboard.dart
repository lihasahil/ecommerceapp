import 'package:flutter/material.dart';
import 'package:project_3/feature/cart/presentation/cart_page.dart';
import 'package:project_3/feature/home/presentation/home_page.dart';
import 'package:project_3/feature/profile/presentation/profile_page.dart';
import 'package:project_3/feature/shop/presentation/shop_page.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int currentPageNo= 0;

  List<Widget> pages =
  [
        HomePage(),
        ShopPage(),
        CartPage(),
        ProfilePage(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageNo,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color:Colors.red),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shop,color:Colors.red),label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color:Colors.red),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color:Colors.red),label: "Profile"),
        ],
        onTap: (int index){
          setState(() {
            currentPageNo=index;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black45,
        unselectedItemColor: Colors.black,

      ),
      body: pages[currentPageNo],
    );
  }
}
