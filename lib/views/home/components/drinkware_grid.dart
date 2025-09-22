import 'package:flutter/material.dart';
import 'package:owala_app/Views/home/components/items_card.dart';
import 'package:owala_app/data/products_data.dart';
import 'package:owala_app/utils/const.dart';

class DrinkwareGrid extends StatelessWidget {
  const DrinkwareGrid({super.key});

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
          childAspectRatio: 0.75
        ),
      itemCount: products.length,
      itemBuilder: (context, index) => ItemsCard(
      product: products [index], 
      press: () => Navigator.pushNamed(
        context, 
        '/detail',
        arguments: products[index]
      )
      ),
      ),
    );
  }
}