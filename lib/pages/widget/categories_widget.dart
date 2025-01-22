import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_ui/constants/text_font_style.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 8; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    // '${Assets.images.a1.path}',
                    'assets/images/$i.png',
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    'Sandal',
                    style: TextFontStyle.headline16w600c4C53A5StylePoppins,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
