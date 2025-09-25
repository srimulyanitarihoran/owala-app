import 'package:flutter/material.dart';
import 'package:owala_app/Views/home/components/items_card.dart';
import 'package:owala_app/models/products_model.dart';
import 'package:owala_app/utils/const.dart';

class DrinkwareGrid extends StatelessWidget {
  final List<ProductsModel> productsToShow;

  const DrinkwareGrid({super.key, required this.productsToShow});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: defaultPadding,
          crossAxisSpacing: defaultPadding,
          childAspectRatio: 0.75,
        ),
        itemCount: productsToShow.length,
        itemBuilder: (context, index) => ItemsCard(
          product: productsToShow[index],
          press: () => Navigator.pushNamed(
            context, 
            '/detail',
            arguments: productsToShow[index],
          ),
        ),
      ),
    );
  }
}
