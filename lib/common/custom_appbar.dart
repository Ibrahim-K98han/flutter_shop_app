import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_ui/constants/text_font_style.dart';
import 'package:flutter_shopping_app_ui/gen/colors.gen.dart';

class CustomAppbar extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final Widget? actionIcon;
  final VoidCallback? onTap;
  const CustomAppbar({
    super.key,
    this.icon,
    this.title,
    this.actionIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Icon(
              icon,
              size: 30,
              color: AppColors.c4C53A5,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              title!,
              style: TextFontStyle.headline23w600c4C53A5StylePoppins,
            ),
          ),
          Spacer(),
          actionIcon!
        ],
      ),
    );
  }
}
