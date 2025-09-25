import 'package:flutter/material.dart';
import 'package:owala_app/utils/const.dart';

class CatalogueAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CatalogueAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Location",
              style: TextStyle(
                color: textColor,
                fontSize: 14,
              ),
            ),
            Text(
              "Jakarta, Indonesia",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black
              ),
            )
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/cart');
          },
          icon: Icon(Icons.shopping_cart_outlined, color: Colors.black,),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_none, color: Colors.black,),
        ),
      ],
    );
  }

  // deafult syntax apabila ingin mengambil ukuran sebuah widget yang mengimplement PreferedSizeWidget
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}