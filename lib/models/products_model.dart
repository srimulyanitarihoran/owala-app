import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductsModel {
  final String image, description, title;
  final int price, id, size;
  final Color color;

  ProductsModel({required this.image, required this.description, required this.title, required this.price, required this.id, required this.size, required this.color});

  String getFormattedPrice() {
    final formatter = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    return formatter.format(price);
  }
}