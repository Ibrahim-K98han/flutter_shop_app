import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_ui/common/custom_appbar.dart';
import 'package:flutter_shopping_app_ui/gen/colors.gen.dart';
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
