import 'package:flutter/material.dart';
String desctext='dsd';
class product{
 late final String image,title,description;
 late final int price,size,id;
late final Color color;

product({
   required this.color,
  required this.id,
  required this.description,
  required this.image,
 required this.price,
  required this.size,
  required this.title
});

}
List <product> products=[

  product(
    id: 1,
    title: "Office Code",
    price: 234,
    size: 19,
    description: desctext,
    image: "images/1.png",
    color: Colors.orangeAccent,
  ),
  product(
    id: 2,
    title: "Hang Top",
    price: 210,
    size: 10,
    description: desctext,
    image: "images/2.png",
    color: Colors.blue,
  ),
  product(
    id: 3,
    title: "Old Fashion",
    price: 110,
    size: 19,
    description: desctext,
    image: "images/4.png",
    color: Color(0xffffD3A983),
  ),
  product(
    id: 4,
    title: "Office Code",
    price: 234,
    size: 12,
    description: desctext,
    image: "images/5.png",
    color: Colors.brown,
  ),
  product(
    id: 5,
    title: "Office Code",
    price: 234,
    size: 19,
    description: desctext,
    image: "images/1.png",
    color: Color(0xffffFA9B76),
  ),
  product(
    id: 6,
    title: "Belt Bag",
    price: 210,
    size: 10,
    description: desctext,
    image: "images/2.png",
    color: Colors.blue,
  ),
];