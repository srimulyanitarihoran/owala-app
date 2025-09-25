import 'package:flutter/material.dart';
import 'package:owala_app/data/products_data.dart';
import 'package:owala_app/models/products_model.dart';
import 'package:owala_app/utils/const.dart';
import 'package:owala_app/views/home/components/app_bar.dart';
import 'package:owala_app/views/home/components/banner_slider.dart';
import 'package:owala_app/views/home/components/bottom_nav_bar.dart';
import 'package:owala_app/views/home/components/categories.dart';
import 'package:owala_app/views/home/components/drinkware_grid.dart';

class CatalogueScreen extends StatefulWidget {
  const CatalogueScreen({super.key});

  @override
  State<CatalogueScreen> createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen> {
String selectedCategory = "All"; // default All
List<ProductsModel> get filteredProducts => selectedCategory == "All"
    ? products
    : products.where((p) => p.categories == selectedCategory).toList();

  
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    //TODO: menampilkan list dari widget yang akan di tampilkan di bottom navbar
    // wishlist screen
    // setting screen
    // profile screen
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0 ? CatalogueAppBar() : null,
      body: _selectedIndex == 0
        ? SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BannerSlider(),
              SizedBox(height: 15),
              Categories(
  onCategorySelected: (category) {
    setState(() {
      selectedCategory = category;
    });
  },
),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Text(
                  "GlowEase",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
              ),
              DrinkwareGrid(productsToShow: filteredProducts),

            ],
          ),
        )
        : _widgetOptions[_selectedIndex - 1],
        bottomNavigationBar: BottomNavBar(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped,
        ),
    );
  }
}