import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_shopping_app_ui/common/custom_appbar.dart';
import 'package:flutter_shopping_app_ui/constants/text_font_style.dart';
import 'package:flutter_shopping_app_ui/gen/colors.gen.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: ListView(
        children: [
          CustomAppbar(
            title: 'Product',
            icon: Icons.arrow_back,
            onTap: () {
              Navigator.pop(context);
            },
            actionIcon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              'assets/images/1.png',
              height: 300,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Title',
                  style: TextFontStyle.headline23w600c4C53A5StylePoppins,
                ),
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemSize: 20,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4),
                  itemBuilder: (context, index) {
                    return Icon(
                      Icons.favorite,
                      color: AppColors.c4C53A5,
                    );
                  },
                  onRatingUpdate: (value) {},
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
