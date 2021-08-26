
import 'package:eshop/product.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {

   const Description({Key? key, required this.Product}) : super(key: key);
final product Product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Text(
        'LEATHER HANDBAG - SHOPPER BAG - TOTE BAG Leather handbag in fashionable style and classical style.The bag is made in 100% of high quality leather Closed with a magnetic clasp.The bag can be worn on the shoulder or in the hand.This type of leather handbag is perfect for work, college, and every day!',
        style: TextStyle(
          fontSize: 15,

        ),
      ),
    );
  }
}
