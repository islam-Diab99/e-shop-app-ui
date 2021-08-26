

import 'package:eshop/description.dart';
import 'package:eshop/product.dart';
import 'package:eshop/productTitleWithImage.dart';
import 'package:flutter/material.dart';

class DetailsScrean extends StatelessWidget {
  const DetailsScrean({Key? key,  required this.Product}) : super(key: key);
  final product Product;


  @override
  Widget build(BuildContext context) {
    int cart=0;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Product.color,
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Product.color,
        leading: InkWell(
          onTap: ()=>Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black38,
            size: 28,

          ),
        ),
        actions: [


          Icon(
            Icons.search,
            color: Colors.black38,
            size: 28,


          ),
          SizedBox(
            width: 10,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Stack(
                alignment: AlignmentDirectional.topEnd,

                children: [

                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black38,
                    size: 28,
                  ),
                  
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.red,

                  ),

                ]

            ),
          ),
          SizedBox(
            width: 9,
          )
        ],
      ),
      body:
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height,
                child: Stack(

                  children: [
                    Container(
                      
                      margin: EdgeInsets.only(top:size.height*0.33),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                          
                        ),
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Row(
                        children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text("Color",style: TextStyle(
                              fontSize: 18
                            ),),
                          SizedBox(height: 10,),
                          Row(

                            children: [
                              CircleAvatar(

                                backgroundColor: Product.color,
                                radius: 10,
                                child:
                                CircleAvatar(

                                  backgroundColor: Colors.white,
                                  radius: 8,
                                  child: CircleAvatar(
                                    backgroundColor: Product.color,
                                    radius: 6,

                                  ),


                                ),

                              ),
                              SizedBox(width: 10,),
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 10,

                              ),
                              SizedBox(width: 10,),
                              CircleAvatar(
                                backgroundColor: Colors.deepPurple,
                                radius: 10,
                              ),
                            ],
                          ),

                        ],
                    ),
                          SizedBox(width: 110,),


                          RichText(
                            text:TextSpan(
                              children: [
                                TextSpan(text: "Size\n",style: TextStyle(color: Colors.black)),
                                TextSpan(
                                  text: "${Product.size} cm",
                                  style: Theme.of(context).textTheme.headline5,

                                )
                              ],
                            ),
                          ),



                  ],
                ),
                      ),
                          Description(Product: Product),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CartCounter(),
                              CircleAvatar(

                                backgroundColor: Colors.red,
                                radius: 15,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 30,),


                          Row(

                            children: [

                              OutlinedButton(onPressed: (){}, child:
                              Icon(Icons.add_shopping_cart_sharp),
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  padding: EdgeInsets.only(top: 18,bottom: 18),
                              ),

                              ),
                              SizedBox(width: 20,),


                              Expanded(
                                child: SizedBox(
                                  height: 50,
                                  child: OutlinedButton(
                                      onPressed: (){},

                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                                        backgroundColor: Product.color,

                                      ),
                                      child: Text(
                                          'Buy Now',style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      )
                                  ),
                                ),
                              )

                            ],
                          ),
                        ],
                      ),

                    ),
                    ProductTitleWithImage(Product: Product),
                  ],

                ),
              ),
            ],
          ),

        ),



    );
  }
}
class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  late int NumOfItems=1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildOutLinedButton( Icons.remove,(){setState(() {
          if(NumOfItems>=1) {
            NumOfItems--;
          }
        });}),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            NumOfItems.toString().padLeft(2,'0'),style: TextStyle(
            fontSize: 20,

          ),
          ),
        ),
        BuildOutLinedButton( Icons.add,(){setState(() {
          NumOfItems++;
        });}),


      ],
    );
  }
}
SizedBox BuildOutLinedButton(IconData icon,Function press){

  return  SizedBox(
    width: 39,
    height: 31,
    child: OutlinedButton(
        onPressed:()=> press(),


        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
        ),
        child:  Icon(icon)
    ),
  );
}