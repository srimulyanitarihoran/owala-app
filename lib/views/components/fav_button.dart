import 'package:flutter/material.dart';
import 'package:owala_app/models/products_model.dart';

class FavButton extends StatelessWidget {
  final ProductsModel product;

  const FavButton({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    bool isFavorite;

    return IconButton(
      onPressed: () {
        if (isFavorite = true) {
          // todo dari provider, unutk memutuskan dia warna apa, dan
        } else {
          // masukkan kode untuk logika penambahan item di halaman whislist
        }
      },
      icon: Icon(
        Icons.favorite,
        color: Colors.red,
      ),
    );
  }
}