import 'package:eshop/details.dart';
import 'package:eshop/itemcard.dart';
import 'package:flutter/material.dart';
import 'package:eshop/product.dart';



class categories extends StatefulWidget {
  @override
  _categoriesState createState() => _categoriesState();

}

class _categoriesState extends State<categories> {

  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses","Hand bag", "Jewellery"];
  int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            itemBuilder: (context,index)=>buildCategory(index),
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
  Widget buildCategory(int index)
  {
    return GestureDetector(

      onTap: (){
        setState(() {
          selectedindex=index;

        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],style: TextStyle(
              fontWeight: FontWeight.bold,
                fontSize: 15,
                color: selectedindex==index? Colors.black:Colors.black26,
              height: 1,


            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 2,
              width: 30,
              color: selectedindex==index? Colors.black : Colors.transparent,
            ),
          ],

        ),
      ),
    );
  }
}



class First_Page extends StatefulWidget {
  const First_Page({Key? key}) : super(key: key);

  @override
  _First_PageState createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
late final product Product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
       leading: Icon(
          Icons.arrow_back_outlined,
         color: Colors.black38,
         size: 28,

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

                  radius:5,
                  backgroundColor: Colors.white,

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
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
                'women',
            style:TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ) ,
            ),
          ),

        categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,

                    childAspectRatio: .7,

                  ),
                  itemBuilder: (context,index)
                  {
                    return ItemCard(product1: products[index],press:()=> Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScrean(
                           Product: products[index],
                          ),
                        )),
                      );

                  }
              ),
            ),
          ),
        ],

      ),

    );
  }
}
