import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_ui/common/custom_appbar.dart';
import 'package:flutter_shopping_app_ui/constants/text_font_style.dart';
import 'package:flutter_shopping_app_ui/gen/colors.gen.dart';
import 'package:flutter_shopping_app_ui/pages/cart/widget/cart_bottom_nav_bar.dart';
import 'package:flutter_shopping_app_ui/pages/cart/widget/cart_item_sample_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppbar(
            onTap: () {
              Navigator.pop(context);
            },
            icon: Icons.arrow_back,
            title: 'Cart',
            actionIcon: Icon(Icons.more_vert_sharp),
          ),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: AppColors.cEDECF2,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                CartItemSampleWidget(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.c4C53A5,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Add Coupon Code',
                          style:
                              TextFontStyle.headline16w600c4C53A5StylePoppins,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
