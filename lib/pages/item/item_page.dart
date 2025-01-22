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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Icon(
                            Icons.remove,
                            color: AppColors.c4C53A5,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            '01',
                            style:
                                TextFontStyle.headline16w600c4C53A5StylePoppins,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Icon(
                            Icons.add,
                            color: AppColors.c4C53A5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'This is more details description of the product. you can write, This is more details description of the product. you can write',
                  style: TextFontStyle.headline15wNormalc4C53A5StylePoppins,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      'Size:',
                      style: TextFontStyle.headline15wNormalc4C53A5StylePoppins
                          .copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        for (int i = 5; i < 10; i++)
                          Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 8,
                                  )
                                ]),
                            child: Text(
                              i.toString(),
                              style: TextFontStyle
                                  .headline16w600c4C53A5StylePoppins,
                            ),
                          )
                      ],
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
