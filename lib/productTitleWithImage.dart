
import 'package:eshop/product.dart';
import 'package:flutter/material.dart';

class ProductTitleWithImage extends StatelessWidget {
  ProductTitleWithImage({Key? key, required this.Product}) : super(key: key);
  final product Product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white,
              fontSize: 17
            ),
          ),
          Text(
            Product.title,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(text:
                  TextSpan(
                    children:[
                      TextSpan(
                        text: 'Prise\n',
                        style: TextStyle(
                            color: Colors.white,



                        ),

                      ),
                      TextSpan(
                        text: '\$${Product.price}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40

                        ),

                      ),

                    ]

                  ),


              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  width: 300,
                  height: 280,
                  padding: EdgeInsetsDirectional.all(20),


                  child: Hero(
                    tag: "${Product.id}",
                    child: Image.asset(
                      Product.image,
                      fit: BoxFit.fill,


                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
