import 'package:flutter/material.dart';

class CartItemSampleWidget extends StatelessWidget {
  const CartItemSampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Radio(
                value: 'value',
                groupValue: 'groupValue',
                onChanged: (index) {},
              )
            ],
          ),
        )
      ],
    );
  }
}
