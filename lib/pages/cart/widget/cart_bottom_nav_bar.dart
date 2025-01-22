import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_ui/constants/text_font_style.dart';
import 'package:flutter_shopping_app_ui/gen/colors.gen.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 130,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total:',
                  style: TextFontStyle.headline23w600c4C53A5StylePoppins,
                ),
                Text(
                  '\$250',
                  style: TextFontStyle.headline23w600c4C53A5StylePoppins,
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppColors.c4C53A5,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Check Out',
                style: TextFontStyle.headline14w600ScaffoldColorStylePoppins,
              ),
            )
          ],
        ),
      ),
    );
  }
}
