import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_ui/common/custom_appbar.dart';
import 'package:flutter_shopping_app_ui/constants/text_font_style.dart';
import 'package:flutter_shopping_app_ui/gen/colors.gen.dart';
import 'package:flutter_shopping_app_ui/pages/widget/categories_widget.dart';
import 'package:flutter_shopping_app_ui/pages/widget/items_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppbar(),
          Container(
            // height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: AppColors.cEDECF2,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 200,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search here....',
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        size: 27,
                        color: AppColors.c4C53A5,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Text(
                    'Categories',
                    style: TextFontStyle.headline23w600c4C53A5StylePoppins,
                  ),
                ),
                CategoriesWidget(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Text(
                    'Best Selling',
                    style: TextFontStyle.headline23w600c4C53A5StylePoppins,
                  ),
                ),
                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
