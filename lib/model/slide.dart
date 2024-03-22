import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  //final String description;

  Slide({
    required this.imageUrl,
    required this.title,
   // required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/family.png',
    title: 'Bound By Care, Driven By\nInnovation,Your Trusted\nHealthcare Family',
    //description: 'Introducing the SCG Health & Purpose.',
  ),
  Slide(
    imageUrl: 'assets/dr8.png',
    title: 'Indias Fastest Growing Pharmaceutical Company: Shaping A Healthier Tomorrow,Today!',
   // description: 'Introducing the SCG Health & Purpose.',
  ),
  Slide(
    imageUrl: 'assets/dr.png',
    title: 'We extend a heartfelt welcome to our organization,with great enthusiasm and joy.Heres to a successful journey together!',
    //description: 'Introducing the SCG Health & Purpose.',
  ),
];