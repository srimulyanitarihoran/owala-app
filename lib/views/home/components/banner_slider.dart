import 'package:flutter/material.dart';
import 'package:owala_app/data/banner_data.dart';
import 'package:owala_app/utils/const.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 180),
      child: PageView.builder(
        itemCount: demoBanners.length,
        itemBuilder: (context, index) {
          final banner = demoBanners[index];
          return GestureDetector(
            onTap: () {
              // sementara test klik
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Klik banner ke-$index")),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  banner.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
