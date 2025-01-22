import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_ui/constants/text_font_style.dart';
import 'package:flutter_shopping_app_ui/gen/colors.gen.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        for (int i = 1; i < 8; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: AppColors.c4C53A5,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '-50%',
                        style: TextFontStyle
                            .headline14w600ScaffoldColorStylePoppins,
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/images/${i}.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  'Product Title',
                  style: TextFontStyle.headline16w600c4C53A5StylePoppins,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Write description of product',
                  style: TextFontStyle.headline15wNormalc4C53A5StylePoppins,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$55',
                      style: TextFontStyle.headline16w600c4C53A5StylePoppins,
                    ),
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: AppColors.c4C53A5,
                    )
                  ],
                )
              ],
            ),
          ),
      ],
    );
  }
}
