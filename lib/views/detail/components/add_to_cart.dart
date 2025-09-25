import 'package:flutter/material.dart';
import 'package:owala_app/data/cart_data.dart';
import 'package:owala_app/models/products_model.dart';
import 'package:owala_app/utils/const.dart';

class AddToCart extends StatelessWidget {
  final ProductsModel product;
  final int quantity;

  const AddToCart({super.key, required this.product, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: defaultPadding),
            height: 50,
            width: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: product.color),
            ),
            child: IconButton(
              icon: Icon(Icons.add_shopping_cart_outlined),
              onPressed: () {
                var existing = cartItems.indexWhere(
                  (item) => item.id == product.id,
                );
                if (existing == -1) {
                  product.quantity = 1;
                  cartItems.add(product);
                } else {
                  cartItems[existing].quantity++;
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("${product.title} ditambahkan ke cart!"),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: product.color,
                maximumSize: Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("${product.title} is purchased"),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Text(
                "Buy Now",
                style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
