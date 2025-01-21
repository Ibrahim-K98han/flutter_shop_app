import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_ui/constants/text_font_style.dart';
import 'package:flutter_shopping_app_ui/gen/colors.gen.dart';
import 'package:badges/badges.dart' as badges;

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: AppColors.c4C53A5,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'XYZ Shop',
              style: TextFontStyle.headline23w600c4C53A5StylePoppins,
            ),
          ),
          Spacer(),
          Badge()
        ],
      ),
    );
  }
}
