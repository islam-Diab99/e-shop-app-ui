
import 'package:eshop/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.product1, required this.press}) : super(key: key);
  final product product1;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>press(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,


              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: product1.color,
                borderRadius: BorderRadius.circular(16)
              ),
              child:Hero(
                tag: "${product1.id}",
                child: Image(
                 image: AssetImage(product1.image),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            product1.title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54

            ),
          ),
          Text(
              '${product1.price}\$',
      style: TextStyle(
        color: Colors.black,
      fontSize: 15,



      ),
          ),
        ],
      ),
    );
  }
}
