import 'package:flutter/material.dart';
import 'package:foodmarketappui/models/cart_model.dart';
import 'package:foodmarketappui/pages/cart_page.dart';
import 'package:provider/provider.dart';

import '../components/grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => CartPage())),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Good Morning',
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text('Lets order fresh items for you',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Divider(
                thickness: 4,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text('Fresh items',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            Expanded(
                child: Consumer<CartModel>(
                    builder: (context, value, child) => GridView.builder(
                        itemCount: value.shopItems.length,
                        padding: EdgeInsets.all(12),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                        itemBuilder: (context, index) {
                          return GroceryItemTile(
                            onPressed: (){
                              Provider.of<CartModel>(context,listen: false)
                                  .addItemToCart(index);


                            },
                            itemName: value.shopItems[index][0],
                            itemPrice: value.shopItems[index][1],
                            imagePath: value.shopItems[index][2],
                            color: value.shopItems[index][3],
                          );
                        })))
          ],
        ),
      ),
    );
  }
}
