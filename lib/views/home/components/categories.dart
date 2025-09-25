import 'package:flutter/material.dart';
import 'package:owala_app/data/products_data.dart';
import 'package:owala_app/models/products_model.dart';
import 'package:owala_app/utils/const.dart';

class Categories extends StatefulWidget {
  final Function(String) onCategorySelected;


  const Categories({super.key, required this.onCategorySelected});

  @override
  State<Categories> createState() => _CategoriesState();
}

  List<Map<String, dynamic>> categories = [
  {
    "image": "assets/images/Group 1.png",
    "text": "Toner"
  },
  {
    "image": "assets/images/Group 2.png",
    "text": "Sunscreen"
  },
  {
    "image": "assets/images/Group 1.png",
    "text": "Moisturizer"
  },
  {
    "image": "assets/images/Group 2.png",
    "text": "Serum"
  },
];
  int selectedIndex = 0;


class _CategoriesState extends State<Categories> {
  String selectedCategory = "All"; // default All
  List<ProductsModel> get filteredProducts => selectedCategory == "All"
      ? products
      : products.where((p) => p.categories == selectedCategory).toList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
            "categories",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textColor
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {},
            child: Text(
              "View All",
              style: TextStyle(
                color: primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
          )
            ],
          ),
          SizedBox(height: defaultPadding),
          SizedBox(
            height: 65,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => _buildCategory(index),
            )
          ),
        ],
      ),
    );
  }

  GestureDetector _buildCategory(int index) {
    return GestureDetector(
      onTap: () {
  setState(() {
    selectedIndex = index;
  });
  widget.onCategorySelected(categories[index]["text"]); // <--- ini baru
},

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
  width: 40,
  height: 40,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: selectedIndex == index ? primaryColor : Colors.grey,
  ),
  child: ClipOval(
    child: Image.asset(
      categories[index]["image"],
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => Icon(Icons.image),
    ),
  ),
),

            SizedBox(height: 7),
            Text(
              categories[index]["text"],
              style: TextStyle(
                color: selectedIndex == index ? primaryColor : Colors.black,
                fontWeight: selectedIndex == index ? FontWeight.bold : FontWeight.w600,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}